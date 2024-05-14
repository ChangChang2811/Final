import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/Register.dart';
// import 'package:flutter_application_1/Home.dart';
// import 'package:flutter_application_1/Library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Learning English',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(body: MyLibraryPage()));
  }
}
