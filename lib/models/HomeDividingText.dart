import 'package:flutter/material.dart';

class HomeDividingText extends StatelessWidget {
  const HomeDividingText(
    this.type,
    this.view, {
    Key? key,
  }) : super(key: key);
  final String type;
  final String view;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              type,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'View All E-Gifts',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
