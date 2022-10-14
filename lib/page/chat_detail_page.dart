import 'dart:developer' as developer;
import 'package:chat_demo/bloc/chat_detail/chat_detail_bloc.dart';
import 'package:chat_demo/bloc/chat_detail/chat_detail_state.dart';
import 'package:chat_demo/data/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/message_widget.dart';

class ChatDetailPage extends StatefulWidget {
  final UserModel user;
  const ChatDetailPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  late ChatDetailBloc chatDetailBloc;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    chatDetailBloc = ChatDetailBloc(widget.user);
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: chatDetailBloc,
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.user.name),
          ),
          body: Column(
            children: [
              Expanded(
                child: BlocBuilder<ChatDetailBloc, ChatDetailState>(
                  builder: (context, state) {
                    return state.when(
                      (messages) {
                        if (messages.isEmpty) {
                          return const Center(
                            child: Text('No Data'),
                          );
                        } else {
                          return ListView.builder(
                            itemBuilder: (context, index) {
                              return MessageWidget(
                                message: messages[index],
                              );
                            },
                            itemCount: messages.length,
                          );
                        }
                      },
                      loading: () => const CupertinoActivityIndicator(),
                      error: (error) => Center(
                        child: Text('Error:  ${error}'),
                      ),
                    );
                  },
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                      border: Border(top: Divider.createBorderSide(context))),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: textEditingController,
                          decoration: const InputDecoration(
                            hintText: 'Send message...',
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      IconButton(
                        onPressed: () {
                          if (textEditingController.text.trim().isNotEmpty) {
                            String content = textEditingController.text.trim();
                            textEditingController.clear();
                            chatDetailBloc
                                .sendMessage(content)
                                .then((value) {});
                          }
                        },
                        icon: const Icon(Icons.send),
                      )
                    ],
                  ))
            ],
          ),
        );
      }),
    );
  }
}
