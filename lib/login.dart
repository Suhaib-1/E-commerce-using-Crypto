import 'package:flutter/material.dart';
import 'package:test_6_6_2020/signup.dart';
import 'package:test_6_6_2020/wallet.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: const Color(0xffEDD79C),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 320.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://ps.w.org/custom-login-page-templates/assets/icon-256x256.png?rev=1667452"))),
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
                                color: const Color(0xffCEE4B5),
                                width: 5),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                            color: const Color(0xffCEE4B5)),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.9,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 2,
                        child: Form(
                            key: _formKey,
                            child: Column(children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(
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
                              ),
                              const SizedBox(
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
                              const Divider(
                                height: 22,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff6BB49F),
                                      side: const BorderSide(
                                          style: BorderStyle.solid, width: 2),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)))),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Wallet()));
                                    }
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 60, right: 60, top: 8, bottom: 8),
                                    child: Text(
                                      'Log in',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  )),
                              SizedBox(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => const SignUp()));
                                      },
                                      child: const Text(
                                        'Dont Have An Account',
                                        style: TextStyle(color: Colors.black54),
                                      )))
                            ])))
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
