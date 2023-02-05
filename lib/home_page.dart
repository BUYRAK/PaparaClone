import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
      appBar: AppBar(
        leading: Icon(Icons.list, color: Colors.black, size: 40,),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.png', width: 30),
            label: 'Ana Sayfa'
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/qr-code.png', width: 30),
            label: 'QR İşlemleri'
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/send.png', width: 30),
            label: 'Para Transferi'
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/payments.png', width: 30),
            label: 'Ödemeler',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      )
    );
  }
}