import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:campusell/screens/signup.dart';

import 'landingPage.dart';


class Login extends StatefulWidget{
  const Login({Key? key}) : super (key: key);
  @override
  _LoginState createState() => _LoginState();
  }

class _LoginState extends State<Login>{
  //form key
  final _formkey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        )
      ),

    );
    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,

      //validator
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )
      ),

    );

    final loginButton = Material(
      elevation: 5,
      borderRadius:  BorderRadius.circular(10),
      color: Color(0xff4CA7F8),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(150,15,150,15),
        //minWidth: MediaQuery.of(context.size!.width),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingScreen()),);
        },
        child: Text(
          "Login",
          textAlign:TextAlign.center ,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,

        ),),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(

                      child: Image.asset(
                          "assets/logo.png",
                      height: 50,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Campusell",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xff4CA7F8),
                          fontStyle: FontStyle.italic),),
                    SizedBox(height: 100,),
                    emailField,
                    SizedBox(height: 25,),
                    passwordField,
                    SizedBox(height: 35,),
                    loginButton,
                    SizedBox(height: 25,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text("OR"),]
                    ),
                    SizedBox(height: 25,),
                    SignInButton(
                        Buttons.Google,
                        text: "Continue with Google",
                        padding: EdgeInsets.fromLTRB(60,8,60,8),

                        onPressed: (){}),

                    SizedBox(height: 35,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?"),
                        GestureDetector(onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()),);
                        },
                        child: Text(
                          " Signup",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4CA7F8),
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}