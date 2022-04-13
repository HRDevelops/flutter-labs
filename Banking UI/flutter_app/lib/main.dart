import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/AddCardC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      theme: ThemeData(fontFamily: 'Kanit'),
      title: "Banking UI",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 16,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AddCardC();
                }),
              );
            },
            color: Colors.black87,
          ),
          title: Center(
            child: Text(
              "All Cards",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 16,
              ),
              color: Colors.black12,
            )
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                  Colors.black87,
                  Colors.black54,
                  'assets/banking/Visa_Inc._logo.png',
                  Alignment.centerLeft,
                  Alignment.centerRight,
                  'Sunny Aveiro'),
              Card(
                  Colors.deepPurple,
                  Colors.deepPurpleAccent,
                  'assets/banking/Group 3.png',
                  Alignment.centerLeft,
                  Alignment.centerRight,
                  'Sunny Aveiro'),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Card(
                    Colors.cyan,
                    Colors.cyanAccent,
                    'assets/banking/tp1.png',
                    Alignment.topCenter,
                    Alignment.bottomCenter,
                    ''),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Expanded Card(
    Color c1, Color c2, String img, Alignment a1, Alignment a2, String name) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(15),
        height: 180,
        width: 330,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/banking/Visa_Inc._logo.png',
            ),
            alignment: Alignment.topRight,
            scale: 0.4,
            opacity: 0.1,
          ),
          gradient: LinearGradient(
            begin: a1,
            end: a2,
            colors: [
              c1,
              c2,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/banking/NexusPay Logo.png',
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Dutch Bangla Bank",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        '**** **** **** 1690',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'Platinum Plus',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 28.0),
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(' '),
                Center(
                  child: Text(
                    'Exp 01//22',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Image.asset(
                  img,
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
