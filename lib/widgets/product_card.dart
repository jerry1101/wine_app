import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final Image image;
  final String title;
  final String description;
  final double price;

  ProductCard({@required this.title, this.description, this.image, this.price});
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 40, bottom: 20),
        height: 120,
        decoration: BoxDecoration(
            color: Colors.blueGrey[800],
            borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
      ),
      Container(
        margin: EdgeInsets.only(top: 35, bottom: 20, right: 10),
        height: 120,
        decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
      ),
      Container(
        margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
        color: Colors.white.withOpacity(0.2),
        height: 140,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Image.asset('assets/images/Item_1.png', fit: BoxFit.fitHeight),
            GestureDetector(
              child: this.image,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            DetailScreen(this.image)));
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              width: 200,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      this.title,
                      style: GoogleFonts.inconsolata(
                          color: Colors.blue[900],
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      this.description,
                      style: GoogleFonts.comfortaa(
                          fontSize: 9, fontWeight: FontWeight.w900),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(5))),
          margin: EdgeInsets.only(right: 380, top: 40, bottom: 20),
          child: Text(
            this.price.toString(),
            style:
                TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),
          )),
    ]);
  }
}

class DetailScreen extends StatelessWidget {
  final Image imageLink;
  DetailScreen(this.imageLink);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: this.imageLink,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
