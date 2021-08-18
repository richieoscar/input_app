import 'package:flutter/material.dart';
import 'package:input_app/model/user.dart';
import 'package:input_app/screens/input_screen.dart';
import 'package:input_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }


}