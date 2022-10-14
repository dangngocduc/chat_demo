import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../firestore_config.dart';
import 'auth_state.dart';

class AuthBloc extends Cubit<AuthState> {
  AuthBloc() : super(const AuthState.unauthorized()) {
    init();
  }

  Future init() async {
    if (FirebaseAuth.instance.currentUser != null) {
      await checkAccountAndCreateDocument();
      emit(const AuthState.authorized());
    } else {
      emit(const AuthState.unauthorized());
    }

    //Listen update auth state changed
    FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user != null) {
          checkAccountAndCreateDocument().then((value) {
            emit(const AuthState.authorized());
          });
        } else {
          emit(const AuthState.unauthorized());
        }
      },
    );
  }

  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) return null;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future signOut() async {
    await GoogleSignIn().signOut();
    return FirebaseAuth.instance.signOut();
  }

  Future checkAccountAndCreateDocument() async {
    final userSnapshot = await FirebaseFirestore.instance
        .collection(userCollection)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    if (!userSnapshot.exists) {
      FirebaseFirestore.instance
          .collection(userCollection)
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        'name': FirebaseAuth.instance.currentUser!.displayName,
        'avatar': FirebaseAuth.instance.currentUser!.photoURL,
        'id': FirebaseAuth.instance.currentUser!.uid
      });
    }
  }
}
