import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'secondScreen.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  getLocation();
                },
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 57, 58, 90),
                  //radius: 30,
                  child: Icon(
                    Icons.gps_fixed,
                    color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                color: Color.fromARGB(255, 57, 58, 90),
                child: Text(
                  'Permission?',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  checklocationStatus();
                },
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text('Latitude : $latitude'),
          Text('Longitude : $longitutde'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                color: Color.fromARGB(255, 122, 133, 194),
                icon: Icon(
                  Icons.forward,
                  color: Colors.white,
                ),
                label: Text(
                  'Towards second screen',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
