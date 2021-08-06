import 'package:flutter/material.dart';
import 'package:maktabeh/models/Cart.dart';
import 'package:maktabeh/models/Item.dart';
import 'package:maktabeh/models/YqeenModel.dart';

import 'components/body.dart';

class YaqeenScreen extends StatelessWidget {
  static String routeName = "/yaqeen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body_Yaqeen(),
      //bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Yaqeen Library Products",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoYaqeen.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
