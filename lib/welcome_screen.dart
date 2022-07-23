import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wealth_earn/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool firstOpen = true;

  _onIntroEnd(context) async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Login()));
  }

  // ignore: unused_element
  _buildFullScreenImage() {
    return Container(
      margin: const EdgeInsets.all(22),
      child: Image.asset(
        'assets/welcome_screen/appLogo.png',
        fit: BoxFit.contain,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
      ),
    );
  }

  _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/welcome_screen/$assetName', width: width);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!firstOpen) {
        _onIntroEnd(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700,color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 19.0,color: Colors.white),
      descriptionPadding: EdgeInsets.all(16),
      // pageColor: Colors.amber,
      pageColor: Color(0xff1a1830),
      imagePadding: EdgeInsets.zero,
    );

    return firstOpen
        ? IntroductionScreen(
            // globalBackgroundColor: Colors.amber,
      globalBackgroundColor: Color(0xff1a1830),
            globalHeader: Align(
              alignment: Alignment.topRight,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, right: 16),
                  child: _buildImage('appLogo.png', 60),
                ),
              ),
            ),
            pages: [
              PageViewModel(
                  title: 'Wealth Earn',
                  bodyWidget: const Text(
                    'Want to make money, but you’re not sure where to start?\nDon’t worry, we’ve got you covered.'
                    'And you\'re not alone.\n\nMore than one-quarter (27%) of Around the world earned extra income from Wealth Earn last year, '
                    'according to the Report on the Economic Well-Being of U.S. Households in 2020, '
                    'released in May 2021 by the Board of Governors of the Federal Reserve System.',
                    style: TextStyle(
                      fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                  image: _buildImage('img1.png'),
                  decoration: pageDecoration),
              PageViewModel(
                title: 'Earn Your Money',
                bodyWidget: const Text(
                  'Selling online products is a quick way to make some money.\n\n'
                  'buy/sell you\'r orders and make your own profits.',
                  style: TextStyle(
                    fontSize: 17.5,
                      color: Colors.white
                  ),
                ),
                image: _buildImage('img2.png'),
                decoration: pageDecoration,
              ),
              PageViewModel(
                  title: 'Save Your Money',
                  body:
                      'Now you can withdraw you\'r own money faster by crypto wallets.',
                  image: _buildImage('img3.png'),
                  decoration: pageDecoration.copyWith(
                      imagePadding: const EdgeInsets.only(top: 100), imageFlex: 2)),
            ],
            onDone: () => _onIntroEnd(context),
            onSkip: () => _onIntroEnd(context),
            // You can override onSkip callback
            showSkipButton: true,
            skipFlex: 0,
            nextFlex: 0,
            skip: const Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            ),
            next: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            done: const Text('Done',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.white)),
            controlsMargin: const EdgeInsets.all(16),
            controlsPadding: const EdgeInsets.all(4),
            dotsDecorator: const DotsDecorator(
              size: Size(10.0, 10.0),
              color: Colors.white,
              activeSize: Size(22.0, 10.0),
              activeColor: Colors.amber,
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
            dotsContainerDecorator: const ShapeDecoration(
              color: Colors.black54,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          )
        : WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              body: SizedBox(
                height: size.height,
                width: double.infinity,
              ),
            ),
          );
  }
}
