import 'package:flutter/material.dart';
import 'package:maktabeh/screens/cart/cart_screen.dart';
import 'package:maktabeh/screens/sign_in/sign_in_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My cart",
            icon: "assets/icons/Cart Icon.svg",
            press: () => {Navigator.pushNamed(context, CartScreen.routeName)},
          ),
          // ProfileMenu(
          //   text: "Notifications",
          //   icon: "assets/icons/Bell.svg",
          //   press: () {},
          // ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {
              customLaunch('mailto:majdzo12345@gmail.com?subject=Problem&body=Say your Problem Here');
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
