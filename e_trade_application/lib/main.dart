import 'package:e_trade_application/views/bottomnavbar.dart';
import 'package:e_trade_application/views/detailspage/details_page.dart';
import 'package:e_trade_application/views/homepage/home_page.dart';
import 'package:e_trade_application/views/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displayMedium: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
  
}


