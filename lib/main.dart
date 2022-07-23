import 'package:flutter/material.dart';
import 'package:wealth_earn/account_screen.dart';
import 'package:wealth_earn/customers_screen.dart';
import 'package:wealth_earn/products_screen.dart';
import 'package:wealth_earn/recharge_screen.dart';
import 'package:wealth_earn/signup_screen.dart';
import 'package:wealth_earn/packages_screeen.dart';
import 'package:wealth_earn/wallet_screen.dart';
import 'package:wealth_earn/welcome_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
      title: 'Hello',
      debugShowCheckedModeBanner: false,
    );
  }
}
