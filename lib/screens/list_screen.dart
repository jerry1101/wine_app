import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wine_app/constants/layout_constants.dart';
import 'package:wine_app/widgets/body.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: SvgPicture.asset('assets/icons/notification.svg'),
              onPressed: null)
        ],
        title: Text('Wine Shopper'),
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
