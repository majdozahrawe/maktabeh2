import 'package:flutter/material.dart';
import 'package:maktabeh/models/Cart.dart';
import 'package:maktabeh/models/Item.dart';
import 'package:maktabeh/models/WafaaModel.dart';
import 'package:maktabeh/models/YqeenModel.dart';

import 'components/body.dart';

class WafaaScreen extends StatelessWidget {
  static String routeName = "/wafaa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body_Wafaa(),
      //bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Wafaa Library Products",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoWafaa.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
