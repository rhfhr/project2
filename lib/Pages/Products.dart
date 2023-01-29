import 'package:flutter/material.dart';

import '../models/Data.dart';
import '../models/HomeDividingText.dart';
import 'ProductDetails.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: NetworkImage(
                  'https://d1i8t2ah6myua2.cloudfront.net/uploads/banner_item/image_files/2bc102ad7a2f71d81ae5e9c3ae58cb79fa025a14.jpeg?1674728282'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  HomeDividingText('Popular E-Gift Cards', 'View All E-Gifts'),
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (var product in Data1.products)
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (Context) => SingleChildScrollView(
                                    child: ProductDetails(
                                  product: product,
                                )),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFf6f6f6),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Container(
                                        width: 150,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image:
                                                  NetworkImage(product.image)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Text(
                                    product.cardname,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  HomeDividingText('Holiday Favorites', 'View All'),
                  Container(
                    height: 400,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (var product in Data2.products)
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (Context) => SingleChildScrollView(
                                    child: ProductDetails(
                                  product: product,
                                )),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(product.image)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Text(
                                    product.cardname,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
