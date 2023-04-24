import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uigivenbyacompany/addTransaction/firstPage.dart';

import 'pages/accountPage.dart';
import 'pages/categoryPage.dart';
import 'pages/giftPage.dart';
import 'pages/homepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePagePurchase(),
      home: AddTransactionFirstPage(),
    );
  }
}

class HomePagePurchase extends StatefulWidget {
  const HomePagePurchase({Key? key}) : super(key: key);

  @override
  State<HomePagePurchase> createState() => _HomePagePurchaseState();
}

class _HomePagePurchaseState extends State<HomePagePurchase> {
  final List screens = [
    HomePage(),
    CategoryPage(),
    GiftPage(),
    AccountPage()
  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: index,
        onTap: (tapIndex) {
          setState(() {
            index = tapIndex;
          });
        },
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home),

          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.category),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_outlined),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
          ),
        ],
        iconSize: 28,


      ),

      body: screens[index],
    );
  }
}
