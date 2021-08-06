import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maktabeh/components/default_button.dart';
import 'package:maktabeh/models/Cart.dart';
import 'package:maktabeh/models/Product.dart';
import 'package:maktabeh/models/Product.dart';
import 'package:maktabeh/screens/cart/components/cart_card.dart';
import 'package:maktabeh/screens/details/components/color_dots.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'credit_pay.dart';

class CheckoutCard extends StatelessWidget {
  double sum=0;
  CartCard card;
  final Product product;
  final Cart cart;
   CheckoutCard({
    Key key, this.product, this.cart,this.card
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                       // text : "{rice}",
                       // text: '${demoProducts[product.id-1] == cart.product.id? cart.product.price.toString():0 }',
                       text: '\$${demoProducts.length>0?demoProducts.map<double>((e) => e.price).reduce((value, element) => value+element).toStringAsFixed(2): 0}',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {
                     // sum+= card.cart.product.price;
                     // print(card.product.title.toString());
                      Navigator.pushNamed(context, CreditCardPage.routeName);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
