import 'dart:async';
import 'dart:io';
import 'package:campusell/data/data.dart';
import 'package:flutter/material.dart';
import 'package:campusell/screens/splash_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.of(context).pushReplacementNamed('/screens/splash_screen.dart'));
  }

  @override

  Widget build(BuildContext context) {

    return SplashScreenView(
        navigateRoute: SplashScreen(),
        duration: 3000,
        imageSize: 130,
        imageSrc: "assets/logo.png",
        text: "Campusell",
        textType: TextType.NormalText,
        textStyle: TextStyle(
          fontSize: 30.0,
          color: Color(0xff4CA7F8),
          fontStyle: FontStyle.italic

        ),
        backgroundColor: Colors.white,

    );

  }

}