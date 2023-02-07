import 'package:cached_network_image/cached_network_image.dart';
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
      appBar: AppBar(
        leading: Icon(Icons.list, color: Colors.black, size: 40,),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: CachedNetworkImage(
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  imageUrl: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Row(
          children: [
            Image.asset('assets/icons/papara_single.png')
          ],
        ),
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