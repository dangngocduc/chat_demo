import 'package:chat_demo/bloc/auth/auth_bloc.dart';
import 'package:chat_demo/bloc/chat_conversation/chat_conversation_bloc.dart';
import 'package:chat_demo/page/application.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  GetIt.instance.registerLazySingleton(() => AuthBloc());
  GetIt.instance.registerLazySingleton(() => ChatConversationBloc());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: GetIt.instance.get<AuthBloc>(),
        ),
        BlocProvider.value(
          value: GetIt.instance.get<ChatConversationBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Application(),
      ),
    );
  }
}
