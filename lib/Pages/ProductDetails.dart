import 'package:flutter/material.dart';

import '../models/Data.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product});

  final Product product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var count = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Givingli Cash',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color(0xFF333333)),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: NetworkImage(widget.product.image),
                  height: 200,
                  width: 300,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.right,
                widget.product.cardname,
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Edit Amount',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: (() {
                        setState(() {
                          count = count - 10;
                        });
                      }),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffDDDDDD),
                              blurRadius: 8,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        child: const Icon(
                          Icons.horizontal_rule,
                          size: 30,
                          color: Color(0xFF8aa4f5),
                        ),
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '\$${count}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  InkWell(
                      onTap: (() {
                        setState(() {
                          count = count + 10;
                        });
                      }),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffDDDDDD),
                              blurRadius: 8,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 30,
                          color: Color(0xFF8aa4f5),
                        ),
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 180,
          ),
          InkWell(
            onTap: () {
              Data1.cart.add(widget.product);
            },
            child: Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFF333333),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text('ADD GIFT',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
