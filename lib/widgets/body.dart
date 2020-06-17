import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wine_app/constants/layout_constants.dart';
import 'package:wine_app/widgets/product_list.dart';
import 'package:wine_app/widgets/search_bar.dart';

import 'category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBar(),
        CategoryList(),
        ProductList(),
      ],
    );
  }
}


