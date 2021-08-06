import 'package:flutter/material.dart';
import 'package:maktabeh/components/rounded_icon_btn.dart';
import 'package:maktabeh/models/Cart.dart';
import 'package:maktabeh/models/Product.dart';
import 'package:maktabeh/screens/cart/components/cart_card.dart';


import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  double sum = 0;
  CartCard card;
  final Cart cart;

  ColorDots({
    Key key,
    @required this.product,this.sum,this.card, this.cart
  }) : super(key: key);

  final Product product;
  void AddToCart(){
    demoCarts.add(
        Cart(product: demoProducts[product.id-1]));
  }
  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
                (index) => ColorDot(
              color: product.colors[index],
              isSelected: index == selectedColor,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {
              AddToCart();
            },
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
        Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}