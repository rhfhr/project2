import 'package:flutter/material.dart';
import 'Pages/FirstPage.dart';
import 'comonents/my_text.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

AppBar createAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: MyText('Shop Gifts', fontSize: 30),
    titleSpacing: -30,
    actions: homeActions,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFf9f9f9),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Material(
              color: Color(0xFFf9f9f9),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.search, color: Colors.grey),
                  Expanded(
                    child: TextField(
                      //textAlign: TextAlign.left,
                      decoration: InputDecoration.collapsed(
                        hintText: ' Search gift cards, anything',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    ),
  );
}
