import 'package:chat/firebase_options.dart';
import 'package:chat/pages/auth_or_app_page.dart';
import 'package:chat/pages/chat_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    User? usuario = FirebaseAuth.instance.currentUser;
    // ignore: prefer_typing_uninitialized_variables
    final pagina;
    if (usuario != null) {
      pagina = const ChatPage();
      // UserInfoScreen(
      //   user: usuario,
      // );
    } else {
      pagina = const AuthOrAppPage();
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const AuthOrAppPage(),
      home: pagina,
      debugShowCheckedModeBanner: false,
    );
  }
}
