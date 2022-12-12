import 'package:flutter/material.dart';
import 'package:slacks_test/screens/jbm.dart';

class ItemCard extends StatelessWidget {
  final Product1? product;
  final Function()? press;
  const ItemCard({this.product , this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 300,
              height: 100,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Hero(tag: '${product!.id!}',child: Image.asset(product!.image!)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              product!.title!,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Text(
            ' ₹${product!.price!}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}