import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maktabeh/models/Item.dart';
import 'package:maktabeh/models/YqeenModel.dart';

import '../../../size_config.dart';
import 'items.dart';

class Body_Yaqeen extends StatefulWidget {
  @override
  _Body_YaqeenState createState() => _Body_YaqeenState();
}

class _Body_YaqeenState extends State<Body_Yaqeen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoYaqeen.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoYaqeen[index].Allproduct.id.toString()),
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
            child: ItemCard(items: demoYaqeen[index]),
          ),
        ),
      ),
    );
  }
}
