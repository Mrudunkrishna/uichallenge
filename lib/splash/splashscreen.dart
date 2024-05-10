import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uichallenge/bottomtab/bottomtab.dart';
import 'package:uichallenge/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => loginpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Center(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height/1.8,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 300),
                        child: Image.asset("assets/images/clapperboard.png",width: 200,height: 180,),
                      ))
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: Row(children: [
                  Text("CIMA",style: TextStyle(fontSize: 30),),
                  Text("X",style: TextStyle(fontSize: 30,color: Color.fromRGBO(255, 204, 0, 1)),),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}