import 'package:flutter/material.dart';
import 'package:maktabeh/All_Products/WafaaProduct/items_screen.dart';
import 'package:maktabeh/All_Products/asdeqaaProduct/items_screen.dart';
import 'package:maktabeh/All_Products/yaqeenProduct/items_screen.dart';
import 'package:maktabeh/components/default_button.dart';
import 'package:maktabeh/screens/details/components/top_rounded_container.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
    EdgeInsets.only(
    left: getProportionateScreenWidth(20),
    right: getProportionateScreenWidth(220),),
          child:Text(
            "Some Libraries",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/ba9e9.jpg",
                category: "مكتبة اليقين",
                numOfBrands: 28,
                press: () {
                  Navigator.push(context, new MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (BuildContext context) {
                        return new Scaffold(
                          appBar: new AppBar(
                            title: new Text('Library Info'),
                          ),
                          body: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AspectRatio(
                              aspectRatio: 1.52,
                              child: Container(
                                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                                decoration: BoxDecoration(
                                  color: kSecondaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Hero(
                                  tag: "Priview",
                                  child: new Image(
                                image: new AssetImage("assets/images/ba9e9.jpg"),
                              ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "مكتبة اليقين",
                                style: TextStyle(color: Colors.black,
                                  fontSize: 30,),
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.center,
                              child:TopRoundedContainer(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 0.15,
                                    right: SizeConfig.screenWidth * 0.15,
                                    bottom: getProportionateScreenWidth(40),
                                    top: getProportionateScreenWidth(15),
                                  ),
                                  child: DefaultButton(
                                    text: "Call Owner",
                                    press: () => launch("tel://0788671092"),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Align(
                              alignment: Alignment.center,
                              child:TopRoundedContainer(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 0.15,
                                    right: SizeConfig.screenWidth * 0.15,
                                    bottom: getProportionateScreenWidth(40),
                                    top: getProportionateScreenWidth(15),
                                  ),
                                  child: DefaultButton(
                                    text: "Show Library Products",
                                    press: () => Navigator.pushNamed(context, YaqeenScreen.routeName),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        );
                      }
                  ));
                },
              ),
              SpecialOfferCard(
                image: "assets/images/asdeqaa.jpg",
                category: "مكتبة الأصدقاء",
                numOfBrands: 30,
                press: () {
                  Navigator.push(context, new MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (BuildContext context) {
                        return new Scaffold(
                          appBar: new AppBar(
                            title: new Text('Library Info'),
                          ),
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.52,
                                child: Container(
                                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Hero(
                                    tag: "Priview",
                                    child: new Image(
                                      image: new AssetImage("assets/images/asdeqaa.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "مكتبة الأصدقاء",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 30,),
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child:TopRoundedContainer(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.15,
                                      right: SizeConfig.screenWidth * 0.15,
                                      bottom: getProportionateScreenWidth(40),
                                      top: getProportionateScreenWidth(15),
                                    ),
                                    child: DefaultButton(
                                      text: "Call Owner",
                                      press: () => launch("tel://0788671092"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 3),
                              Align(
                                alignment: Alignment.center,
                                child:TopRoundedContainer(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.15,
                                      right: SizeConfig.screenWidth * 0.15,
                                      bottom: getProportionateScreenWidth(40),
                                      top: getProportionateScreenWidth(15),
                                    ),
                                    child: DefaultButton(
                                      text: "Show Library Products",
                                      press: () => Navigator.pushNamed(context, AsdeqaaScreen.routeName),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        );
                      }
                  ));

                },
              ),
              SpecialOfferCard(
                image: "assets/images/alwafaa.JPG",
                category: "مكتبة الوفاء",
                numOfBrands: 32,
                press: () {
                  Navigator.push(context, new MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (BuildContext context) {
                        return new Scaffold(
                          appBar: new AppBar(
                            title: new Text('Library Info'),
                          ),
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.52,
                                child: Container(
                                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Hero(
                                    tag: "Priview",
                                    child: new Image(
                                      image: new AssetImage("assets/images/alwafaa.JPG"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "مكتبة الوفاء",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 30,),
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child:TopRoundedContainer(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.15,
                                      right: SizeConfig.screenWidth * 0.15,
                                      bottom: getProportionateScreenWidth(40),
                                      top: getProportionateScreenWidth(15),
                                    ),
                                    child: DefaultButton(
                                      text: "Call Owner",
                                      press: () => launch("tel://0788671092"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 3),
                              Align(
                                alignment: Alignment.center,
                                child:TopRoundedContainer(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.15,
                                      right: SizeConfig.screenWidth * 0.15,
                                      bottom: getProportionateScreenWidth(40),
                                      top: getProportionateScreenWidth(15),
                                    ),
                                    child: DefaultButton(
                                      text: "Show Library Products",
                                      press: () => Navigator.pushNamed(context, WafaaScreen.routeName),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        );
                      }
                  ));

                },
              ),
              SpecialOfferCard(
                image: "assets/images/nermeen.jpg",
                category: "مكتبة نيرمين",
                numOfBrands: 22,
                press: () {
                  Navigator.push(context, new MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (BuildContext context) {
                        return new Scaffold(
                          appBar: new AppBar(
                            title: new Text('Library Info'),
                          ),
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.02,
                                child: Container(
                                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Hero(
                                    tag: "Priview",
                                    child: new Image(
                                      image: new AssetImage("assets/images/nermeen.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "مكتبة نيرمين",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 30,),
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child:TopRoundedContainer(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.15,
                                      right: SizeConfig.screenWidth * 0.15,
                                      bottom: getProportionateScreenWidth(40),
                                      top: getProportionateScreenWidth(15),
                                    ),
                                    child: DefaultButton(
                                      text: "Call Owner",
                                      press: () => launch("tel://0788671092"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                  ));

                },
              ),
              SpecialOfferCard(
                image: "assets/images/aloola.jpg",
                category: "مكتبة الأولى",
                numOfBrands: 11,
                press: () {
                  Navigator.push(context, new MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (BuildContext context) {
                        return new Scaffold(
                          appBar: new AppBar(
                            title: new Text('Library Info'),
                          ),
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.02,
                                child: Container(
                                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Hero(
                                    tag: "Priview",
                                    child: new Image(
                                      image: new AssetImage("assets/images/aloola.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "مكتبة الاولى",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 30,),
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child:TopRoundedContainer(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.15,
                                      right: SizeConfig.screenWidth * 0.15,
                                      bottom: getProportionateScreenWidth(40),
                                      top: getProportionateScreenWidth(15),
                                    ),
                                    child: DefaultButton(
                                      text: "Call Owner",
                                      press: () => launch("tel://0788671092"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                  ));


                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(142),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
