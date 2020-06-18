import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_app/models/product.dart';
import 'package:wine_app/viewmodels/product_view_model.dart';
import 'package:wine_app/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // var vm = Provider.of<ProductViewModel>(context);
    var product_list = Provider.of<ProductViewModel>(context).productPresentation;
    print("====>" + product_list.length.toString());
    return Expanded(
      child: ListView.builder(
          itemCount: product_list.length,
          itemBuilder: (context, index) {
            return ProductCard(
                title: product_list[index].title,
                description: product_list[index].description,
                image: Image.network(product_list[index].image));
          }),
    );
  }
}

class LLLLLL extends StatelessWidget {
  const LLLLLL({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ProductCard(
            title: 'Product #1',
            description:
                'Product #1 Product #1 Product #1 Product #1 Product #1',
            image: Image.network(
                'https://www.totalwine.com/dynamic/x490,sq/media/sys_master/twmmedia/he6/ha3/11975692320798.png')),
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
    );
  }
}
