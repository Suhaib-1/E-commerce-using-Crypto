import 'package:flutter/material.dart';
import 'package:test_6_6_2020/account_screen.dart';
import 'package:test_6_6_2020/customers_screen.dart';
import 'package:test_6_6_2020/products_screen.dart';
import 'package:test_6_6_2020/recharge_screen.dart';
import 'package:test_6_6_2020/signup_screen.dart';
import 'package:test_6_6_2020/packages_screeen.dart';
import 'package:test_6_6_2020/wallet_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Packages(),
      title: 'Hello',
      debugShowCheckedModeBanner: false,
    );
  }
}
