import 'package:flutter/material.dart';
import 'package:schoolbus/HomePage.dart';
import 'package:schoolbus/Login.dart';
import 'package:schoolbus/Signup.dart';

import 'CheckList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Checklist(),
    );
  }
}

