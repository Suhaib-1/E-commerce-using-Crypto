import 'package:flutter/material.dart';
import 'package:test_6_6_2020/account.dart';
import 'package:test_6_6_2020/customers.dart';
import 'package:test_6_6_2020/products.dart';
import 'package:test_6_6_2020/recharge.dart';
import 'package:test_6_6_2020/signup.dart';
import 'package:test_6_6_2020/wallet.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Wallet(),
      title: 'Hello',
      debugShowCheckedModeBanner: false,
    );
  }
}
