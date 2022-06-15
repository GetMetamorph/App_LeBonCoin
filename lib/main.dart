import 'package:flutter/material.dart';
import 'package:untitled/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application LeBonCoin',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LoginPage()
    );
  }
}