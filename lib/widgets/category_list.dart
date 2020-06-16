import 'package:flutter/material.dart';
import 'package:wine_app/constants/category)list.dart';
import 'package:wine_app/constants/layout_constants.dart';



class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        child: Container(
          height: 30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category_list.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                      width: 100,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.4)),
                      child: Text(
                        category_list[index],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                );
              }),
        ));
  }
}
