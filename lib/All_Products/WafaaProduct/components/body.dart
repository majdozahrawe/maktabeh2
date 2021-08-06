import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh/models/Item.dart';
import 'package:maktabeh/models/WafaaModel.dart';

import '../../../size_config.dart';
import 'items.dart';

class Body_Wafaa extends StatefulWidget {
  @override
  _Body_WafaaState createState() => _Body_WafaaState();
}

class _Body_WafaaState extends State<Body_Wafaa> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoWafaa.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoWafaa[index].Allproduct.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoItems.removeAt(index);
              });
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: ItemCard(items: demoWafaa[index]),
          ),
        ),
      ),
    );
  }
}
