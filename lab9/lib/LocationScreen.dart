import 'package:flutter/material.dart';
import 'package:lab9/weather.dart';
import 'dart:convert';
import 'WeatherIcons.dart';

class LocationScreen extends StatefulWidget {
  //const LocationScreen({ Key? key }) : super(key: key);
  LocationScreen({this.locationWeather});
  dynamic locationWeather;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  // Widget weatherBox(Weather _weather) {
  //   return Column(
  //     children: [
  //       Text("Temperature: ${_weather.temp}*C"),
  //       Text("City Name: ${_weather.cityName}"),
  //       Text("Id: ${_weather.weatherCond}"),
  //     ],
  //   );
  // }

  WeatherIcons weatherIcons = WeatherIcons();
  dynamic temperature;
  dynamic cityName;
  dynamic weatherIcon;
  dynamic weatherMsg;

  void updateUI(dynamic locationWeather) {
    temperature = locationWeather['main']['temp'];

    var weathercode = locationWeather['weather'][0]['id'];
    weatherIcon = weatherIcons.getWeatherIcon(weathercode);

    cityName = locationWeather['name'].toString();
  }

  //Weather _weather = Weather();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Screen"),
      ),
      body: Center(
        // child: weatherBox(_weather),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Temperature is: $temperature°C"),
            Text("of city: $cityName"),
            Text("Weather Condition is: $weatherIcon"),
          ],
        ),
      ),
    );
  }
}
