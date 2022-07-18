import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Terms of Us'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          )),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 18, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Terms and conditions',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                      '1. Licence. We grant you a limited licence to use this app.',
                      style: TextStyle(
                        fontSize: 14,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '2. Breach. We may cancel your licence if you breach any of these terms',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '3. Framing. You may not frame this app.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '4. Capacity You agree to these terms on the basis that you have the capacity to visit this app.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '5. Accurate information. You promise that you will give this app only accurate information.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '6. Ownership. We or our third party licensor own all rights in this app.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '7. Trade marks. All our trade marks are our property and you may not use them without our permission. '
                      'All other trade marks are their respective owners property.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '8. Restrictions. You may not recharge, reworded, or receive income without our permission',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '9. Own risk. You use this app at your own risk and we make no warranties about it.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '10. indemnity. You indemnify us against any liability related to your use of this app.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      '11. Indirect damages. We will never be responsible for any indirect damages.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
