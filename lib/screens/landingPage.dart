
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'header_with_searchbox.dart';


class LandingScreen extends StatefulWidget {

  @override
  _LandingScreenState createState() => _LandingScreenState();

}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      //drawer: drawerSection,
      appBar: AppBar(
        backgroundColor: Color(0xff4CA7F8),
      ),
      body: Stack(),
    );
  }
}