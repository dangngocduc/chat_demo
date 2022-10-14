import 'dart:developer' as developer;
import 'package:chat_demo/bloc/auth/auth_bloc.dart';
import 'package:chat_demo/bloc/auth/auth_state.dart';
import 'package:chat_demo/page/conversation_page.dart';
import 'package:chat_demo/page/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: ((context, state) {
        return state.when(
          authorized: () {
            return const ConversationPage();
          },
          unauthorized: () {
            return const SignInPage();
          },
        );
      }),
    );
  }
}
