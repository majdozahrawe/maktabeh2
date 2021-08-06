import 'package:flutter/material.dart';
import 'package:maktabeh/models/Cart.dart';
import 'package:maktabeh/models/Item.dart';
import 'package:maktabeh/models/YqeenModel.dart';
import '../../../constants.dart';
import '../../../size_config.dart';


class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    @required this.items,
  }) : super(key: key);

  final Yaqeen items;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(items.Allproduct.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              items.Allproduct.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${items.Allproduct.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
              ),
            )
          ],
        )
      ],
    );
  }
}
