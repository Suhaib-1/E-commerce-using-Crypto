import 'package:flutter/material.dart';
import 'package:wealth_earn/account_screen.dart';
import 'package:wealth_earn/customers_screen.dart';
import 'package:wealth_earn/products_screen.dart';
import 'package:wealth_earn/recharge_screen.dart';
import 'package:wealth_earn/packages_screeen.dart';

enum SpecialContainerType { customers, products, recharge, order }
enum BottomNav { home, profile }

class Wallet extends StatelessWidget {
  const Wallet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1a1830),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffb43af7),
                    Color(0xff6d2af7),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        "JACK",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://c10.patreonusercontent.com/3/eyJ3IjoyMDB9/patreon-media/p/campaign/2895569/4f7a92f58e6740438a5988189a0b8e3b/1.png?token-time=2145916800&token-hash=6OaOR40De5xhunONrhD2wHILZexccfkBPki238oHc8M%3D",
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'ID: 10510782',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Total amount",
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "\$",
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                        TextSpan(
                          text: "1395.21",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: const <Widget>[
                    SpecialContainer(SpecialContainerType.customers),
                    SpecialContainer(SpecialContainerType.products),
                    SpecialContainer(SpecialContainerType.recharge),
                    SpecialContainer(SpecialContainerType.order),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 11),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
                decoration: BoxDecoration(
                  color: Colors.white30,
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
          ],
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
            onPressed: () {},
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

class SpecialContainer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final type;

  const SpecialContainer(this.type, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String containerText, containerImage;
    Color color;
    ButtonStyleButton button;

    switch (type) {
      case SpecialContainerType.customers:
        containerText = "Customers";
        containerImage = "assets/people.png";
        color = Colors.blue;
        button = ElevatedButton(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.white,
                )
              ]),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Customers()));
          },
        );

        break;
      case SpecialContainerType.products:
        containerText = "Products";
        containerImage = "assets/box.png";
        color = Colors.orange;
        button = ElevatedButton(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.white,
                )
              ]),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Products()));
          },
        );
        break;
      case SpecialContainerType.recharge:
        containerText = "Recharge";
        containerImage = "assets/recharge.png";
        color = Colors.green;
        button = ElevatedButton(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.white,
                )
              ]),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Recharge()));
          },
        );
        break;
      case SpecialContainerType.order:
        containerText = "Order";
        containerImage = "assets/order.png";
        color = Colors.redAccent;
        button = ElevatedButton(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.white,
                )
              ]),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Packages()));
          },
        );
        break;
    }
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white24,
                    offset: Offset(0, 5),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: CircleAvatar(
                // backgroundImage: AssetImage(containerImage,),
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: 31,
                  height: 31,
                  child: Image.asset(
                    containerImage,
                  ),
                ),
                backgroundColor: color,
                radius: 25,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  containerText,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: button),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
