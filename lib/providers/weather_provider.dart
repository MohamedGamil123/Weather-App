import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/weathermodel.dart';

class Weatherprovider extends ChangeNotifier {
  Weathermodel? weatherData;

  getimage() {
    if (weatherData?.condition == "Sunny") {
      return "images/7.png";
    }
    if (weatherData?.condition == "Clear") {
      return "images/11.png";
    }
    if (weatherData?.condition == "Partly cloudy") {
      return "images/1.png";
    }
    if (weatherData?.condition == "Rainy") {
      return "images/9.png";
    }
    if (weatherData?.condition == "Wind") {
      return "images/2.png";
    }
    if (weatherData?.condition == "Thunder") {
      return "images/10.png";
    } else {
      return "images/8.png";
    }
  }

  isday() {
    if (weatherData?.isday == 0) {
      return "Night";
    }
    if (weatherData?.isday == 1) {
      return "Day";
    }
  }
}
//Color.fromARGB(255, 5, 0, 27);