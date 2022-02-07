import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:segunda_parcial/pages/home.dart';
import 'package:segunda_parcial/pages/login.dart';
import 'package:segunda_parcial/pages/register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
