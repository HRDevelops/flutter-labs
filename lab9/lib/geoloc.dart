import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:lab9/LocationScreen.dart';

class GeoLoc extends StatefulWidget {
  const GeoLoc({Key? key}) : super(key: key);

  @override
  State<GeoLoc> createState() => _GeoLocState();
}

class _GeoLocState extends State<GeoLoc> {
  @override
  initState() {
    checklocationStatus();
    getLocation();
    getCurrentWeather();
    super.initState();
  }

  dynamic longitutde;
  dynamic latitude;

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    setState(() {
      latitude = position.latitude;
      longitutde = position.longitude;
    });

    print(position.latitude);
    print(position.longitude);
  }

  Future<Position> checklocationStatus() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // else
    //   return Future.error("Permission is Allowed");
    return await Geolocator.getCurrentPosition();
  }

  Future getCurrentWeather() async {
    http.Response res = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitutde&appid=fdd14960acef4b7a9f5f17718a13060f'));
    // print(res.body);
    // dynamic data;
    dynamic data = jsonDecode(res.body);
    print(data);
    if (res.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: ((context) {
        return LocationScreen(locationWeather: data);
      })));
    } else {
      print(res.statusCode);
    }
  }
//31.4504
//73.1350

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Screen'),
      ),
      body: Container(
        child: Center(child: SpinKitDoubleBounce(color: Colors.grey, size: 40)),
      ),
    );
  }
}
