import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make Your Order'),
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Image.asset('assets/images/Cap.png'),
                ),
                const SizedBox(
                  width: 50,
                ),const Divider(thickness: 2,color: Colors.black ),
                Column(
                  children: const [
                    Text(
                      'Gamig Chair ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' \$ 74',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' X5')
                  ],
                ),
              ],
            ),const Divider(thickness: 2,color: Colors.black,)
          ],
        ),
      ),
    );
  }
}
