import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_page.dart';
import 'signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OurServ',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
      },
    );
  }
}
