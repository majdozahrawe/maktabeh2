import 'package:flutter/material.dart';
import 'package:maktabeh/routes.dart';
import 'package:maktabeh/screens/profile/profile_screen.dart';
import 'package:maktabeh/screens/splash/splash_screen.dart';
import 'package:maktabeh/theme.dart';

//final FirebaseAuth _auth = FirebaseAuth.instance;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
