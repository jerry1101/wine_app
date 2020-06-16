import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wine_app/constants/layout_constants.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(kDefaultPadding),
        padding: EdgeInsets.all(kDefaultPadding / 4),
        // color: Colors.white,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white.withOpacity(0.8),
        ),
        child: TextField(
            decoration: InputDecoration(
          hintText: 'search',
          icon: SvgPicture.asset('assets/icons/search.svg'),
        )));
  }
}
