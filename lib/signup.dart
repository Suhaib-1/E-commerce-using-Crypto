import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_6_6_2020/wallet.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color(0xff1C192E),
                child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 320.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://riverfrontfcu.org/IMAGES/COL-HEADERS/full-size/UrC-Page-Header.jpg"))),
              ),
            ),
          ),
          SizedBox(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.only(
                        top: 250, bottom: 50, left: 200, right: 200)),
                Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid,
                            color: const Color(0xffF3F3F3),
                            width: 5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        color: const Color(0xffFFFFFF)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height / 1.7,
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView (child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide(
                                      style: BorderStyle.solid,
                                      width: 5,
                                      color: Colors.blue),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                                  labelText: 'username',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  prefixIcon: Icon(Icons.person),
                                  hintText: 'Enter user name'),
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: true,
                              enableSuggestions: true,
                              textInputAction: TextInputAction.next,
                              // ignore: missing_return
                              validator: (value) {
                                if (value.isEmpty || value == null) {
                                  return 'Please Enter Valid User Name';
                                }
                              },
                            ),const SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide(
                                      style: BorderStyle.solid,
                                      width: 5,
                                      color: Colors.blue),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                                  labelText: 'Phone Number',
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                  hintText: 'Please Enter The Phone Number',
                                  prefixIcon: Icon(Icons.phone_android)),
                              enableSuggestions: true,
                              autocorrect: true,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.number,
                              // ignore: missing_return
                              validator: (value) {
                                if (value.isEmpty) {
                                  return ('Please Enter The Phone Number');
                                }
                              },
                            ),const SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide(
                                      style: BorderStyle.solid,
                                      width: 5,
                                      color: Colors.blue),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                                  labelText: 'E-mail Address',
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                  hintText: 'Please Enter Your E-mail',
                                  prefixIcon: Icon(Icons.email)),
                              enableSuggestions: true,
                              autocorrect: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9a-zA-Z ]+'))
                              ],
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              // ignore: missing_return
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Your E-mail';
                                }
                              },
                            ),const SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          style: BorderStyle.solid,
                                          width: 5,
                                          color: Colors.blue),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  prefixIcon: Icon(Icons.verified_user),
                                  hintText: 'Enter user name'),
                              obscureText: true,
                              keyboardType: TextInputType.multiline,
                              autocorrect: true,
                              enableSuggestions: true,
                              textInputAction: TextInputAction.done,
                              // ignore: missing_return
                              validator: (value) {
                                if (value.isEmpty || value == null) {
                                  return 'Please Enter Valid Password';
                                }
                                if (value.length < 6) {
                                  return 'Password Must be more than 6 digits';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Wallet()));}
                                  },
                                  child: const Text('Sign Up')),
                            ),
                            const SizedBox(
                              child: Center(
                                child: Text('Sign Up For New Account'),
                              ),
                            )
                          ]),
                      ) ))
              ],
            ),
          ))
        ]),
      ),
    );
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
