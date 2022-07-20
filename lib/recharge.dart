import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recharge extends StatelessWidget {
  const Recharge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            color: const Color(0xffEDD79C),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250.0,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://cdn.coingape.com/wp-content/uploads/2021/08/09183707/images-1-18-.jpg"))),
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                  child: Column(children: [
                const Padding(
                    padding: EdgeInsets.only(
                  top: 150,
                  bottom: 50,
                )),
                Container(
                  // width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height / 1.4,
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color(0xffffffff),
                          width: 5),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: const Color(0xffffffff)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment Method',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      const Text(
                        'make sure to Copy the same Address.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        height: MediaQuery.of(context).size.height * 0.04,
                        thickness: 2,
                      ),
                      const Text(
                        'Tron (TRC20)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Form(
                          child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            enabled: true,
                            suffixIcon: Icon(Icons.copy),
                            isDense: true,
                            hintText: 'TAH9DCpHacRiwvo2HdHePhHmjMTbq3XpBp'),
                        style: TextStyle(fontSize: 15),
                        readOnly: false,
                      )),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Or scan the Qr code',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        child: Image.asset('assets/QrCode.png'),
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      const Text('Send only USDT to this deposit address.'
                          'Sending coin or token other than USDT to this address may result in the loss of your deposit.'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      // ignore: deprecated_member_use
                      OutlineButton(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          CoolAlert.show(
                            context: context,
                            type: CoolAlertType.success,
                            text:
                                "Please wait for your transaction to be processed",
                          );
                        },
                        child: const Text("SUBMIT",
                            style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 2.2,
                                color: Colors.green)),
                      ),
                    ],
                  ),
                )
              ]))
            ])));
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
