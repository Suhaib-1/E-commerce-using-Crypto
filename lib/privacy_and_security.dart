import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivacyAndSecurity extends StatelessWidget {
  const PrivacyAndSecurity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xffAB50A8),
        title: Text('Privacy and security'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 15, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text(
                'Security',
                style: TextStyle(fontSize: 20),
              ),
              const Divider(),
              buildNotificationOptionRow("Enable security and malware protection", true),
              buildNotificationOptionRow("Use a prediction server to help you complete orders", true),
              buildNotificationOptionRow("Prefetch resources to load pages more quickly", true),
              buildNotificationOptionRow("Automatically send usage statistics and rewords", true),
              buildNotificationOptionRow("2-Step Verification", true),
            ],
          )),
    );
  }
}
InkWell buildNotificationOptionRow(String title, bool isActive) {
  return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]),
          ),
          Transform.scale(
            scale: 0.55,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool value) {},
            ),
          )
        ],
      ),);
}