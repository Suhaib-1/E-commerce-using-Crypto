// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wealth_earn/account_screen.dart';
import 'package:wealth_earn/order_screen.dart';
import 'package:wealth_earn/wallet_screen.dart';

enum BottomNav { home, profile }

class Packages extends StatefulWidget {
  const Packages({Key key}) : super(key: key);

  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a1830),
      appBar: AppBar(
        title: Text(
          'Membership Packages',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff1a1830),
        // ignore: prefer_const_constructors
        leading: IconButton( onPressed:(){Navigator.pop(context);},
            icon:const Icon(Icons.arrow_back,
                color: Colors.white)
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Text(
                    'Choose a membership plan to unlock the features',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        // textStyle: const TextStyle(color: Colors.white,),
                        fontSize: 15,
                        color: Colors.white),
                  ),),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'VIP 1 ',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  // textStyle: const TextStyle(color: Colors.white,),
                                  fontSize: 14,
                                  color: const Color(0xffE5C150),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Commission %5',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  // textStyle: const TextStyle(color: Colors.white,),
                                  fontSize: 14,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'VIP 2 ',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  // textStyle: const TextStyle(color: Colors.white,),
                                  fontSize: 14,
                                  color: const Color(0xffE5C150),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Commission %7',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  // textStyle: const TextStyle(color: Colors.white,),
                                  fontSize: 14,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'VIP 3 ',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: const Color(0xffE5C150),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Commission %12',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Order(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SizedBox(
                          height: 147,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 8,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/vip1.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                width: 18,
                                bottom: 0,
                                child: Center(
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Radio(
                                      activeColor: Colors.green,
                                      overlayColor:
                                          MaterialStateProperty.all(Colors.red),
                                      value: 1,
                                      groupValue: 1,
                                      onChanged: (int value) {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Order()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SizedBox(
                          height: 147,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 8,
                                top: 0,
                                child: Container(
                                    decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/vip2.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                )),
                              ),
                              Positioned(
                                width: 18,
                                bottom: 0,
                                child: Center(
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Radio(
                                      activeColor: const Color(0xffF6931E),
                                      overlayColor:
                                          MaterialStateProperty.all(Colors.red),
                                      value: 1,
                                      groupValue: 1,
                                      onChanged: (int value) {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Order(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SizedBox(
                          height: 147,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 8,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage('assets/vip3.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                width: 18,
                                bottom: 0,
                                child: Center(
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Radio(
                                      activeColor: const Color(0xffD8AFD1),
                                      overlayColor:
                                          MaterialStateProperty.all(Colors.red),
                                      value: 1,
                                      groupValue: 1,
                                      onChanged: (int value) {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              BottomNavigationItem(
                type: BottomNav.home,
                isActive: true,
              ),
              BottomNavigationItem(
                type: BottomNav.profile,
                isActive: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final type;
  final bool isActive;

  const BottomNavigationItem({Key key, this.type, this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget icon;
    switch (type) {
      case BottomNav.home:
        icon = IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Wallet()));
            },
            icon: const Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ));
        break;
      case BottomNav.profile:
        icon = IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SettingsPage()));
          },
          icon: const Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
        );
        break;
    }
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          gradient: isActive
              ? const LinearGradient(
                  colors: [
                    Color(0xffb43af7),
                    Color(0xff6d2af7),
                  ],
                )
              : null,
        ),
        child: icon);
  }
}
