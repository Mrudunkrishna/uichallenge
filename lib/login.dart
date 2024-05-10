import 'package:flutter/material.dart';
import 'package:uichallenge/bottomtab/bottomtab.dart';
import 'package:uichallenge/forgotpassword.dart';


// ignore: camel_case_types
class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/dune.png",
            fit: BoxFit.cover,
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                padding: const EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(height: 80.0),
                    const Text(
                      "Log In",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      children: <Widget>[

                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 270,bottom: 5),
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
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(right: 250,bottom: 5),
                          child: Text("Password",style: TextStyle(color: Colors.black),),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.white.withOpacity(0.5),
                            filled: true,
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 20),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => First()),
                          );
                        }, child: Text("Forgot password?",style: TextStyle(color: Colors.black),))
                      ],
                    ),SizedBox(height: 140,),
                    Padding(
                      padding: const EdgeInsets.only(left: 70,right: 70),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => BottomTabBar()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: Size(10, 40), // Adjust the size as needed
                          backgroundColor: Color.fromRGBO(255, 204, 0, 1),
                        ),
                        child: const Text("Log In",style: TextStyle(color: Colors.black),),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );}}