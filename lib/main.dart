import 'package:flutter/material.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/signup_page.dart';
import 'package:untitled/welcome_page.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Application LeBonCoin',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LoginPage()
    );
  }
}