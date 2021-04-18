import 'dart:ui';

import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Application',
      theme: ThemeData(
        primaryColor: Color(0xff20242B),
        accentColor: Color(0xffFEB800),
        textTheme: TextTheme(
          title: TextStyle(
            color: Color(0xffFEFEFE),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          subtitle: TextStyle(color: Color(0xff98999C), fontSize: 16),
          body1: TextStyle(color: Color(0xffFEFEFE), fontSize: 20),
        ),
        fontFamily: 'monospace',
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
