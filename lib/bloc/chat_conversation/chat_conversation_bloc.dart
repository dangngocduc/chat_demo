import 'package:chat_demo/bloc/auth/auth_bloc.dart';
import 'package:chat_demo/bloc/chat_conversation/chat_conversation_state.dart';
import 'package:chat_demo/data/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../firestore_config.dart';

class ChatConversationBloc extends Cubit<ChatConversationState> {
  ChatConversationBloc() : super(const ChatConversationState.loading()) {
    GetIt.instance.get<AuthBloc>().stream.listen((event) {
      event.when(
        authorized: () {
          fetchContact();
        },
        unauthorized: () {
          emit(const ChatConversationState([]));
        },
      );
    });
  }
  Future fetchContact() async {
    FirebaseFirestore.instance
        .collection(userCollection)
        .where('id', isNotEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .listen((event) {
      emit(
        ChatConversationStateData(
          event.docs.map((e) => UserModel.fromJson(e.data())).toList(),
        ),
      );
    });
  }
}
