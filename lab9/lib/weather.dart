import 'dart:convert';

class Weather {
  final dynamic temp;
  final dynamic cityName;
  final dynamic weatherCond;

  Weather({this.temp, this.cityName, this.weatherCond});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        temp: json['main']['temp'].toDouble(),
        cityName: json['name'].toString(),
        weatherCond: json['weather'][0]['id']);
  }
}
