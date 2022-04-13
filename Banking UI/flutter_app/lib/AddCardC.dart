import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

class AddCardC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Kanit'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
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
                  Navigator.pop(context);
                },
                color: Colors.black87,
              ),
              title: Center(
                child: Text(
                  "Add New Card",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/banking/1.png"),
                ],
              ),
              Card(
                  Colors.black87,
                  Colors.black54,
                  'assets/banking/Visa_Inc._logo.png',
                  Alignment.centerLeft,
                  Alignment.centerRight),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(330, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  child: Text("Add Card"),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Expanded Card(Color c1, Color c2, String img, Alignment a1, Alignment a2) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
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
                        'Sunny Aveiro',
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
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
