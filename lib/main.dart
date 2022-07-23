import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wealth_earn/account_screen.dart';
import 'package:wealth_earn/customers_screen.dart';
import 'package:wealth_earn/products_screen.dart';
import 'package:wealth_earn/recharge_screen.dart';
import 'package:wealth_earn/signup_screen.dart';
import 'package:wealth_earn/packages_screeen.dart';
import 'package:wealth_earn/wallet_screen.dart';
import 'package:wealth_earn/welcome_screen.dart';
import 'login_screen.dart';

int initScreen;
Future<void>  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  // ignore: await_only_futures
  initScreen =  await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1); //if already shown -> 1 else 0
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // home: WelcomeScreen(),
      title: 'Hello',
      debugShowCheckedModeBanner: false,
      initialRoute: initScreen == 0 || initScreen == null ? 'onboard' : 'home',
      routes: {
        'home' : (context) => const WelcomeScreen(),
        'onboard': (context) => const Login(),
      },
    );
  }
}
