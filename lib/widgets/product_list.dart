import 'package:flutter/material.dart';
import 'package:wine_app/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ProductCard(
              title: 'Product #1',
              description:
                  'Product #1 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_1.png')),
          ProductCard(
              title: 'Product #2',
              description:
                  'Product #2 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_2.png')),
          ProductCard(
              title: 'Product #3',
              description:
                  'Product #3 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_3.png')),
          ProductCard(
              title: 'Product #1',
              description:
                  'Product #1 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_1.png')),
          ProductCard(
              title: 'Product #2',
              description:
                  'Product #2 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_2.png')),
          ProductCard(
              title: 'Product #3',
              description:
                  'Product #3 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_3.png')),
          ProductCard(
              title: 'Product #1',
              description:
                  'Product #1 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_1.png')),
          ProductCard(
              title: 'Product #2',
              description:
                  'Product #2 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_2.png')),
          ProductCard(
              title: 'Product #3',
              description:
                  'Product #3 Product #1 Product #1 Product #1 Product #1',
              image: Image.asset('assets/images/Item_3.png')),
        ],
      ),
    );
  }
}
