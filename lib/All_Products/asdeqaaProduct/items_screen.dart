import 'package:flutter/material.dart';
import 'package:maktabeh/models/AsdeqaaModel.dart';
import 'package:maktabeh/models/Cart.dart';
import 'package:maktabeh/models/Item.dart';
import 'package:maktabeh/models/YqeenModel.dart';

import 'components/body.dart';

class AsdeqaaScreen extends StatelessWidget {
  static String routeName = "/asdeqaa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body_Asdeqaa(),
      //bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Asdeqaa Library Products",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoAsdeqaa.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
