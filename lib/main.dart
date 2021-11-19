import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BKPI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOn = false;

  void _changeSwitch(bool value) {
    setState(() {
      isOn = value;
    });
  }

// PInk  Color.fromRGBO(231, 77, 137, 1),
// Black dark mode  Color.fromRGBO(43, 43, 43 , 1),
// Gree  Color.fromRGBO(109, 207, 169, 1),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(212, 239, 236, 1),
              Color.fromRGBO(190, 215, 215, 1),
            ],
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(244, 244, 244, 1),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.36,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      width: 10,
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.person),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              "Jon Möller",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 10,
                                  color: Color.fromRGBO(177, 177, 177, 1),
                                ),
                                Text(
                                  "Stockholm, Sweden",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: Color.fromRGBO(177, 177, 177, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              "Visual Designer",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(231, 77, 137, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Upgrade Now - Go Pro",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 30),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0.5,
                        spreadRadius: 2.0,
                        offset: Offset(0, -0.5),
                        color: Colors.black.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 15),
                        child: Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  margin: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(43, 43, 43, 1)),
                                  child: Icon(
                                    Icons.bedtime,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                ),
                                Text(
                                  'Dark Mode',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(117, 117, 117, 1),
                                  ),
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                                trackColor: Color.fromRGBO(221, 221, 221, 1),
                                value: isOn,
                                onChanged: _changeSwitch),
                          ],
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      listTileComponent(
                        Icons.notifications,
                        'Notifications',
                        'On',
                        Color.fromRGBO(231, 77, 137, 1),
                      ),
                      listTileComponent(
                        Icons.lock,
                        'Privacy',
                        null,
                        Color.fromRGBO(231, 77, 137, 1),
                      ),
                      listTileComponent(
                        Icons.shield,
                        'Security',
                        null,
                        Color.fromRGBO(231, 77, 137, 1),
                      ),
                      Container(
                        height: 10,
                      ),
                      listTileComponent(
                        Icons.person,
                        'Account',
                        null,
                        Color.fromRGBO(109, 207, 169, 1),
                      ),
                      listTileComponent(
                        Icons.help,
                        'Help',
                        null,
                        Color.fromRGBO(109, 207, 169, 1),
                      ),
                      listTileComponent(
                        Icons.info,
                        'About',
                        null,
                        Color.fromRGBO(109, 207, 169, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listTileComponent(
    IconData leading, String title, String? subtitle, Color colorIcon) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 25,
                width: 25,
                margin: EdgeInsets.only(right: 5),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: colorIcon),
                child: Icon(
                  leading,
                  color: Colors.white,
                  size: 17,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: Color.fromRGBO(117, 117, 117, 1),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Text(
                subtitle != null ? subtitle : "",
                style: TextStyle(color: Color.fromRGBO(221, 221, 221, 1)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Color.fromRGBO(221, 221, 221, 1),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
