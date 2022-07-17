import 'package:flutter/material.dart';


class Customers extends StatefulWidget {
  const Customers({Key key}) : super(key: key);

  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;
  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = customersData;
    List<Widget> listItems = [];
    for (var post in responseList) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post["brand"],
                      style: const TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$ ${post["price"]}",
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Image.asset(
                  "assets/images/${post["image"]}",
                  height: double.infinity,
                ),
              ],
            ),
          )));
    }
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1a1830),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff1a1830),
          // ignore: prefer_const_constructors
          leading: IconButton( onPressed:(){Navigator.pop(context);},
              icon:const Icon(Icons.arrow_back,
                  color: Colors.white)
          ),
        ),
        // ignore: sized_box_for_whitespace
        body: Container(
          height: size.height,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Best week customers",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: itemsData.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        if (topContainer > 0.5) {
                          scale = index + 0.5 - topContainer;
                          if (scale < 0) {
                            scale = 0;
                          } else if (scale > 1) {
                            scale = 1;
                          }
                        }
                        return Opacity(
                          opacity: scale,
                          child: Transform(
                            transform: Matrix4.identity()..scale(scale, scale),
                            alignment: Alignment.bottomCenter,
                            child: Align(
                                heightFactor: 0.7,
                                alignment: Alignment.topCenter,
                                child: itemsData[index]),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

const customersData = [
  {
    "name":"Eitan Lavi ",
    "brand":"Income",
    "price":7512.09,
    "image":"Men.png"
  },{
    "name":"Rivka Itai",
    "brand":"Income",
    "price":6816.00,
    "image":"Women.png"
  },
  {
    "name":"Fedir Bohdan",
    "brand":"Income",
    "price":3821.42,
    "image":"Men.png"
  },
  {
    "name":"Theodore Elijah",
    "brand":"Income",
    "price":3272.12,
    "image":"Men.png"
  },
  {
    "name":"Liam Decste",
    "brand":"Income",
    "price":2819.00,
    "image":"Men.png"
  },
  {
    "name":"Toby Montague",
    "brand":"Income",
    "price":2351.78,
    "image":"Men.png"
  },
  {
    "name":"Ruslan Pylyp",
    "brand":"Income",
    "price":2053.16,
    "image":"Men.png"
  },
  {
    "name":"George Reggie",
    "brand":"Income",
    "price":1894.09,
    "image":"Men.png"
  },
  {
    "name":"Alina Andriy",
    "brand":"Income",
    "price":1116.00,
    "image":"Women.png"
  }
];