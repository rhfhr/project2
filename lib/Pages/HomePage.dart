import 'package:flutter/material.dart';
import 'package:project2/Pages/ProductDetails.dart';
import 'package:project2/Pages/Products.dart';
import 'package:project2/models/Data.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

var currentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = Products();
    } else if (currentIndex == 1) {
      body = Products();
    } else if (currentIndex == 2) {
      body = Products();
    } else if (currentIndex == 3) {
      body = Products();
    } else {
      body = Products();
    }

    return Scaffold(
      appBar: createAppBar(),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.auto_awesome_outlined,
              size: 30,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              size: 30,
              color: Colors.black,
            ),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.edit_outlined,
              size: 30,
              color: Colors.black,
            ),
            label: 'Edit',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_outline,
              size: 30,
              color: Colors.black,
            ),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
