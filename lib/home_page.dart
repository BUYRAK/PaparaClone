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
        toolbarHeight: 120,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Icon(Icons.list, color: Colors.black, size: 40),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 85),
                child: Image.asset('assets/icons/papara-icon.png', width: 120, height: 120),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 15, bottom: 60),
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
        child: Column(
          children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.grey)
                      )
                    )
                  ),
                  child: Row(
                    children: [
                    Icon(Icons.card_giftcard_rounded, color: Colors.blue,),
                    Text("₺45", style: TextStyle(color: Colors.grey)),
                  ],
                )),
              ),
              Padding(
              padding: const EdgeInsets.only(left: 40, top: 0),
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.grey)
                    )
                  ),
                ),
                child: Row(
                  children: [
                  Text("Türk Lirası ", style: TextStyle(color: Colors.grey)),
                  Image.asset('assets/icons/turkey-flag.png', width: 15),
                  Text(" TL", style: TextStyle(color: Colors.grey)),
                  Icon(Icons.keyboard_arrow_down_outlined, color: Colors.grey,)
                  ],
                )),
              ),
            ],          
          ),
          Row(
            children: [
              IconButton(
                  icon: Image.asset('assets/icons/negative.png'),
                  iconSize: 40,
                  onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75, right: 75),
                child: Text(
                  "₺20,02",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w800),
                ),
              ),
              IconButton(
                  icon: Image.asset('assets/icons/positive.png'),
                  iconSize: 40,
                  onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 10),
                child: Card(
                  elevation: 7,
                  clipBehavior: Clip.hardEdge,
                  child:
                    SizedBox(
                      width: 300,
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20, right: 30, left: 20),
                                child: Row(children: [
                                  Image.asset('assets/icons/user.png', width: 50),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10, left: 10),
                                    child: Column(children: [
                                      Text(
                                        "Profil Fotoğrafı Ekle",
                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                                      ),
                                      Text("Fotoğraf ekleyebilirsin"),
                                    ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios_outlined)
                                ]
                                ),
                              ),
                            ],
                          ), 
                        ],
                      ),
                    ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Row(children: [
              Text("Son İşlemler", style: TextStyle(color: Colors.grey),),
              Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.grey,)
            ],),
          )
          ] 
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