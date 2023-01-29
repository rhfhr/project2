import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 1,
                width: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFFbdbdbd),
                ),
              ),
              const Text('    or enter with    ',
                  style: TextStyle(
                    color: Color(0xFFbdbdbd),
                    fontSize: 16,
                  )),
              Container(
                height: 1,
                width: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFFbdbdbd),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Expanded(
                flex: 1,
                child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/128/281/281764.png'),
                  height: 40,
                  width: 40,
                ),
              ),
              Expanded(
                flex: 1,
                child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/128/2175/2175370.png'),
                  height: 40,
                  width: 40,
                ),
              ),
              Expanded(
                flex: 1,
                child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/4782/4782341.png'),
                  height: 40,
                  width: 40,
                ),
              ),
              Expanded(
                flex: 1,
                child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/128/5968/5968764.png'),
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
