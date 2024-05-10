import 'package:flutter/material.dart';
import 'package:uichallenge/login.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/dune.png",
              fit: BoxFit.cover,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3 - 50,
              left: 10,
              right: 5,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Forgot",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3.3 + 20,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Please enter the email address you registered with we",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(" will send a link to reset your password"),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 3.6 + 120,
              left: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 300,bottom: 5),
                      child: Text("Email",style: TextStyle(color: Colors.black),),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        prefixIcon: const Icon(Icons.email),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 470,
                left: 300,
                child: Column(children: [
              TextButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => loginpage()),
                );
              }, child: Text("Log In?",style: TextStyle(color: Colors.black,fontSize: 20),))
              
              
              
            ],))

          ],
        ),
      ),
    );
  }
}