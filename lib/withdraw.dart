import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:wealth_earn/wallet_screen.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({Key key}) : super(key: key);

  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  final formKey = GlobalKey<FormState>();
  List<String> myList = ['BEP20', 'BEP2', 'TRC20', 'ERC20'];

  // ignore: prefer_typing_uninitialized_variables
  var selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAB50A8),
        title: const Text('Withdraw'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTohNVxt-gsCdyE-ueL3S-emurkNAVCXAI8Uw&usqp=CAU'),
                fit: BoxFit.fill)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40, top: 15),
              child: Text(
                'Make sure to enter the right address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(children: [
                  const Text(
                    'Address',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Form(
                    key: formKey,
                    child: Column(children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.solid, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            hintText: 'Enter your wallet address',
                            errorStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.person)),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: true,
                        enableSuggestions: true,
                        textInputAction: TextInputAction.next,
                        // ignore: missing_return
                        validator: (value) {
                          if (value.isEmpty || value == null) {
                            return 'Please enter your wallet address';
                          }
                        },
                      ),
                      const Divider(),
                      const SizedBox(height: 15),
                      const Text(
                        'Network',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                            errorStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.solid, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)))),
                        hint: const Text(
                          'Ensure the network matches the withdrawal address',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        dropdownColor: const Color(0xff8C54C0),
                        iconEnabledColor: Colors.green,
                        value: selected,
                        items: myList.map((String value) {
                          return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ));
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selected = value;
                          });
                        },
                        // ignore: missing_return
                        validator: (value) {
                          if (value == null) {
                            return "Please Enter The Right Network";
                          }
                        },
                      ),
                      const Divider(),
                      const SizedBox(height: 15),
                      const Text(
                        'The amount',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(
                                  style: BorderStyle.solid, width: 2),
                            ),
                            prefixIcon: const Icon(Icons.send_to_mobile),
                            hintText: 'USDT',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        style: const TextStyle(fontSize: 20),
                        // ignore: missing_return
                        validator: (value) {
                          if (value.isEmpty || value == null) {
                            return 'Please Enter The Correct Amount';
                          }
                        },
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          CoolAlert.show(
                              context: context,
                              type: CoolAlertType.success,
                              text:
                                  "Please wait for your transaction to be processed",
                              onConfirmBtnTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Wallet()));
                              });
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'SEND',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xffAB50A8),
                          side: const BorderSide(style: BorderStyle.solid),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              side: BorderSide(style: BorderStyle.solid)))),
                ]))
          ],
        )),
      ),
    );
  }
}
