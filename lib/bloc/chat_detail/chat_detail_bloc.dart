import 'package:chat_demo/bloc/chat_detail/chat_detail_state.dart';
import 'package:chat_demo/bloc/firestore_config.dart';
import 'package:chat_demo/data/message_model.dart';
import 'package:chat_demo/data/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatDetailBloc extends Cubit<ChatDetailState> {
  final UserModel friend;

  ChatDetailBloc(this.friend) : super(const ChatDetailState.loading()) {
    init();
  }

  void init() {
    FirebaseFirestore.instance
        .collection(conversationCollection)
        .doc(threadId())
        .collection(messageCollection)
        .orderBy('time')
        .snapshots()
        .listen((event) {
      emit(
        ChatDetailState(
          event.docs.map((e) => MessageModel.fromJson(e.data())).toList(),
        ),
      );
    });
  }

  Future sendMessage(String content) {
    MessageModel messageModel = MessageModel(
      content,
      FirebaseAuth.instance.currentUser!.uid,
      friend.id,
      DateTime.now(),
    );
    return FirebaseFirestore.instance
        .collection(conversationCollection)
        .doc(threadId())
        .collection(messageCollection)
        .add(messageModel.toJson());
  }

  String threadId() {
    if (FirebaseAuth.instance.currentUser!.uid.compareTo(friend.id) > 0) {
      return '${FirebaseAuth.instance.currentUser!.uid}_${friend.id}';
    } else {
      return '${friend.id}_${FirebaseAuth.instance.currentUser!.uid}';
    }
  }
}
