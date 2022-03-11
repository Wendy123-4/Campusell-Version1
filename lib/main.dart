import 'dart:async';
import 'dart:io';
import 'package:campusell/data/data.dart';
import 'package:flutter/material.dart';
import 'package:campusell/screens/splash_screen.dart';
import 'package:campusell/screens/home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Home(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/screens/splash_screen.dart': (BuildContext context) => new SplashScreen()
      },
    );
  }
}
