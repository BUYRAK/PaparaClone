import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:papara_clone/welcome_page.dart';



class HelpApp extends StatefulWidget {
  const HelpApp({super.key});

  @override
  State<HelpApp> createState() => _HelpAppState();
}

class _HelpAppState extends State<HelpApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.black,
          onPressed: () { 
           Navigator.push(
            context,
            MaterialPageRoute(builder: ((context) => const WelcomeApp()))
            ); 
          },
        ),
        backgroundColor: Colors.transparent
      ), 
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text(
                "Sorun mu yaşıyorsun?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  Text(
                    "Şifremi unuttum",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Text(
                    "Kapattığım hesabımı tekrar açmak istiyorum",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Text(
                    "Cep numaramı değiştirdim",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Text(
                    "Hesabım askıya alınmış",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Text(
                    "Hesabım ele geçirilmiş olabilir",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 155),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  Text(
                    "Bize ulaş",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 10,
            ),

          ],
        ),
      ),
    );
  }
}