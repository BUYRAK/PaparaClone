import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:papara_clone/help_page.dart';
import 'package:papara_clone/home_page.dart';
import 'package:papara_clone/welcome_page.dart';



class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
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
        child: 
        Center(
          child: Column(
            children: [
              Container(
                child: Text(
                  "Giriş Yap",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  child: Text(
                    "E-posta adresi, cep numarası ya da Apple, Google, Facebook hesaplarından biriyle giriş yap.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14
                    ),
                  ),
                  width: 400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 146, 146, 146)
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 146, 146, 146)
                      )  
                    ),
                    hintText: "E-posta adresi ya da cep numarası",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  ),
                  cursorColor: Colors.purple,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Container(
                  width: 400,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => HomeApp()))
                      );
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      foregroundColor: Colors.white,
                      side: BorderSide(
                        color: Colors.purple
                      ),
                      backgroundColor: Colors.purple
                    ),                
                    child: Text(
                      "Devam Et",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                        indent: 20,
                        endIndent: 20,
                        color: Colors.grey,
                      )
                    ),       
                  Text("ya da"),        
                  Expanded(
                    child: Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                      )
                    ),
                  ]
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          "Apple ile Giriş Yap",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon( 
                        Icons.apple,
                        size: 26,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          "Facebook ile Giriş Yap",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon( 
                        Icons.facebook_outlined,
                        size: 26,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          "Google ile Giriş Yap",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      
                    ],
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                child: Text(
                  "Sorun mu yaşıyorsun?",
                  style: TextStyle(color: Colors.purple[600]),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => const HelpApp()))
                  );
                },
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}