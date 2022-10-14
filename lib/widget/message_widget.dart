import 'dart:developer' as developer;
import 'package:chat_demo/data/message_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final MessageModel message;

  const MessageWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFromMe = FirebaseAuth.instance.currentUser!.uid == message.from;

    return Container(
      padding: const EdgeInsets.all(8).copyWith(
        right: isFromMe ? 8 : 48,
        left: isFromMe ? 48 : 8,
      ),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment:
                  isFromMe ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: isFromMe ? Colors.grey[200] : Colors.green[200],
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: isFromMe
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Text(
                      message.content,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      MaterialLocalizations.of(context)
                          .formatMediumDate(message.time),
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
