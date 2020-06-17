import 'package:flutter/material.dart';

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

class ProductCard extends StatelessWidget {
  final Image image;
  final String title;
  final String description;

  ProductCard({@required this.title, this.description, this.image});
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 40, bottom: 20),
        height: 100,
        decoration: BoxDecoration(
            color: Colors.blueGrey[800],
            borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
      ),
      Container(
        margin: EdgeInsets.only(top: 35, bottom: 20, right: 10),
        height: 100,
        decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
      ),
      Container(
        margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
        // color: Colors.white.withOpacity(0.1),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Image.asset('assets/images/Item_1.png', fit: BoxFit.fitHeight),
            this.image,
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    this.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
