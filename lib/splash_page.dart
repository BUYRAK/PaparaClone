import 'package:flutter/material.dart';
import 'dart:async';

import 'package:papara_clone/login_page.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 1);
    return Timer(duration, route);
  }
  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const LoginApp())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset('assets/img/papara_logo.png', height: 250, width: 250)
        )
      ]),
    );
  } 
} 
