import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rahim_ke_dohe/View/Screen/Home_screen.dart';
class Spalshscreen extends StatelessWidget {
  const Spalshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => HomeScreen()));
    });
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: Container(height: 900,child: Image.asset("assets/WhatsApp Image 2024-06-22 at 1.49.32 PM.jpeg")),
      ),
    );
  }
}
