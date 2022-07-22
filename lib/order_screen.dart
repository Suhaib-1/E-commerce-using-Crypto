import 'package:flutter/material.dart';
import 'package:test_6_6_2020/wallet_screen.dart';

class Order extends StatelessWidget {
  const Order({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make Your Order'),
        leading: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Wallet()));
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
                      'Cap',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' \$ 114.95‬',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' X5')
                  ],
                ),
              ],
            ),const Divider(thickness: 2,color: Colors.black,),          Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Image.asset('assets/images/gaming_chair.png'),
                ),
                const SizedBox(
                  width: 50,
                ),const Divider(thickness: 2,color: Colors.black ),
                Column(
                  children: const [
                    Text(
                      'Cap',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' \$ 114.95‬',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' X5')
                  ],
                ),
              ],
            ),const Divider(thickness: 2,color: Colors.black,),     Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Image.asset('assets/images/headphone.png'),
                ),
                const SizedBox(
                  width: 50,
                ),const Divider(thickness: 2,color: Colors.black ),
                Column(
                  children: const [
                    Text(
                      'Cap',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' \$ 114.95‬',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' X5')
                  ],
                ),
              ],
            ),const Divider(thickness: 2,color: Colors.black,),     Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Image.asset('assets/images/Vitamin_C_Serum.png'),
                ),
                const SizedBox(
                  width: 50,
                ),const Divider(thickness: 2,color: Colors.black ),
                Column(
                  children: const [
                    Text(
                      'Cap',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' \$ 114.95‬',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' X5')
                  ],
                ),
              ],
            ),const Divider(thickness: 2,color: Colors.black,),
            Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Image.asset('assets/images/Wireless_speakers.png'),
                ),
                const SizedBox(
                  width: 50,
                ),const Divider(thickness: 2,color: Colors.black ),
                Column(
                  children: const [
                    Text(
                      'Cap',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' \$ 114.95‬',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' X5')
                  ],
                ),
              ],
            ),const Divider(thickness: 2,color: Colors.black,), Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Image.asset('assets/images/Car_Cleaning_Gel.png'),
                ),
                const SizedBox(
                  width: 50,
                ),const Divider(thickness: 2,color: Colors.black ),
                Column(
                  children: const [
                    Text(
                      'Cap',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' \$ 114.95‬',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' X5')
                  ],
                ),
              ],
            ),const Divider(thickness: 2,color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
