import 'package:flutter/material.dart';
import 'package:papara_clone/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: Scaffold(
        // ignore: prefer_const_constructors
        body: SplashScreen()
      )
    );
  }
}

