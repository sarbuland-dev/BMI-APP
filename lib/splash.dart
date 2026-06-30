import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practise/main.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calculate,color: Color(0xffb2e84d),size: 60,),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Text('BMI Calculator',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 25),),

          ],
        ),
      ),
    );
  }
}