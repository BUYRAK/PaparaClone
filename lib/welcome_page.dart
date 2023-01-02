import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:papara_clone/register_page.dart';
import 'login_page.dart';


class WelcomeApp extends StatefulWidget {
  const WelcomeApp({super.key});

  @override
  State<WelcomeApp> createState() => _WelcomeAppState();
}

class _WelcomeAppState extends State<WelcomeApp> {
  List<String> images = [
    "assets/img/login-image-1.png",
    "assets/img/login-image-2.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        Column(
          children: [
            Center(child: Image.asset('assets/img/papara_logo.png', width: 200)),
            Text(
                  "Işık hızında, ücretsiz para gönder.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    ),
                ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: SizedBox( 
                height: 250,
                width: 250,
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover
                        ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Dilediğin kişinin Papara hesabına veya IBAN'ına 7/24 ücretsiz para gönder. Anında para iste. Düzenli ödemelerin için para transferi talimatı ver.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[500], fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 400,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => const LoginApp()))
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    foregroundColor: Colors.black,
                    side: BorderSide(
                      color: Colors.black
                    )
                  ),
                  child: const Text("Giriş Yap"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 400,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => const RegisterApp()))
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    side: BorderSide(
                      color: Colors.purple,
                    )
                  ),
                  child: const Text("Hesap Aç"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: InkWell(
                child: Text(
                  "Güvenlik Bildirgesi",
                  style: TextStyle(color: Colors.purple[600]),
                ),
                onTap: () {},
              ),
            )
          ]
        ),
      )
    );
  }
}