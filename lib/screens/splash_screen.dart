import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'input_screen.dart';

class Splash extends StatefulWidget {

   @override
  _SplashState createState() => _SplashState();
  
}

class _SplashState extends State<Splash>{

  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Input(),
          ));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
          
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            SizedBox(height: 300),
            CircleAvatar(
              
              radius: 40, child: Image.asset("images/hng.png")),
            SizedBox(height: 40,),
        
            Text("Stage 2", style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              ),
              )
          ],
              ),
            ),
        ));
  }
}
