import 'package:e_trade_application/views/homepage/home_page.dart';
import 'package:e_trade_application/views/listpage/list_page.dart';
import 'package:e_trade_application/views/profile/profile_page.dart';
import 'package:e_trade_application/views/sepet/shopping_page.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int secilenIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> sayfalar = [
      HomePage(),
      ListPage(),
      ShoppingPage(),
      ProfilePage(),
    ];

    return Scaffold(
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: secilenIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,

        onTap: (gelenVeri) {
          setState(() {
            secilenIndex = gelenVeri;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: secilenIndex == 0 ? Colors.orange : Colors.grey,
            ),
            label: "Ana Sayfam",
            tooltip: "Ana Sayfam",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Listelerim",
            tooltip: "Listelerim",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Sepetim",
            tooltip: "Sepetim",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: "Hesabım",
            tooltip: "Hesabım",
          ),
        ],
      ),
    );
  }
}
