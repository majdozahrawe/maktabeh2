import 'package:flutter/widgets.dart';
import 'package:maktabeh/location/SimpleMap.dart';
import 'package:maktabeh/screens/cart/cart_screen.dart';
import 'package:maktabeh/screens/cart/components/credit_pay.dart';
import 'package:maktabeh/screens/details/details_screen.dart';
import 'package:maktabeh/screens/forgot_password/forgot_password_screen.dart';
import 'package:maktabeh/screens/home/home_screen.dart';
import 'package:maktabeh/screens/login_success/login_success_screen.dart';
//import 'package:maktabeh/screens/otp/otp_screen.dart';
import 'package:maktabeh/screens/profile/profile_screen.dart';
import 'package:maktabeh/screens/sign_in/sign_in_screen.dart';
import 'package:maktabeh/screens/splash/splash_screen.dart';
import 'package:maktabeh/location/SimpleMap.dart';

import 'All_Products/WafaaProduct/items_screen.dart';
import 'All_Products/asdeqaaProduct/items_screen.dart';
import 'All_Products/seemore/items_screen.dart';
import 'All_Products/yaqeenProduct/items_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
 // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  //OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SimpleMap.routeName: (context) => SimpleMap(),
  ItemScreen.routeName: (context) => ItemScreen(),
  YaqeenScreen.routeName: (context) => YaqeenScreen(),
  AsdeqaaScreen.routeName: (context) => AsdeqaaScreen(),
  WafaaScreen.routeName: (context) => WafaaScreen(),
  CreditCardPage.routeName: (context) => CreditCardPage(),









};
