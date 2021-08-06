import 'package:flutter/material.dart';
import 'package:maktabeh/models/Cart.dart';
import 'package:maktabeh/models/Item.dart';

import 'components/body.dart';

class ItemScreen extends StatelessWidget {
  static String routeName = "/items";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      //bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "All Products",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoItems.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
