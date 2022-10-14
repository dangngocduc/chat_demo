import 'dart:developer' as developer;
import 'package:chat_demo/bloc/auth/auth_bloc.dart';
import 'package:chat_demo/bloc/chat_conversation/chat_conversation_bloc.dart';
import 'package:chat_demo/bloc/chat_conversation/chat_conversation_state.dart';
import 'package:chat_demo/page/chat_detail_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversation'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<AuthBloc>().signOut();
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: BlocBuilder<ChatConversationBloc, ChatConversationState>(
        builder: ((context, state) {
          return state.when(
            (contact) {
              return ListView.builder(
                itemBuilder: ((context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ChatDetailPage(user: contact[index])));
                    },
                    leading: CircleAvatar(
                      child: Image.network(contact[index].avatar),
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                    title: Text(contact[index].name),
                    subtitle: Text(contact[index].id),
                  );
                }),
                itemCount: contact.length,
              );
            },
            loading: () {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            },
            error: (error) {
              return Center(
                child: Text('Error : $error'),
              );
            },
          );
        }),
      ),
    );
  }
}
