import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    this.title,
                    style: GoogleFonts.inconsolata(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    this.description,
                    style: GoogleFonts.robotoMono(fontSize: 12),
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
