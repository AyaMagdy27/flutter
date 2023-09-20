import 'package:flutter/material.dart';
import 'package:mdc1/login.dart';
import 'package:mdc1/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const MyHomePage(),
      },
     // home: ,
    );
  }
}
