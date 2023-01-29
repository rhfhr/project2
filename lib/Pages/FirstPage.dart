import 'package:flutter/material.dart';
import 'package:project2/Pages/ProductDetails.dart';
import 'package:project2/Pages/HomePage.dart';

import '../models/SocialMediaIcon.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1000,
        child: Stack(
          children: <Widget>[
            Container(
              height: 500,
              child: const Image(
                image: NetworkImage(
                    'https://static.wixstatic.com/media/b11989_2a156f111ebe4d9daecad182f6f13d4c~mv2.png/v1/fill/w_986,h_980,al_c,q_90,usm_0.33_1.00_0.00,enc_auto/Frame%202948_2x.png'),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 450,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                height: 500,
                width: 430,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      const Image(
                        image: NetworkImage(
                            'https://go.givingli.com/assets/images/logo/logo.png'),
                        width: 150,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text('Enter your phone number',
                          style: TextStyle(
                              color: Color(0xFF829fef), fontSize: 18)),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(),
                          labelText: 'Phone number',
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => HomePage())));
                        },
                        child: Container(
                          height: 60,
                          width: 400,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xFFbdbdbd),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Text('ENTER',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SocialMediaIcon(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
