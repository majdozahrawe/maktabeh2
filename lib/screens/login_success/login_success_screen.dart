import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  final String email;

// Receiving Email using Constructor.
  LoginSuccessScreen({Key key, @required this.email}) : super(key: key);

  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
       // title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
