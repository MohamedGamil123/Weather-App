import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/weathermodel.dart';

class Weatherservice {
  String baseurl = "http://api.weatherapi.com/v1";

  Future getweather({required String cityname}) async {
    Uri url = Uri.parse(
        "$baseurl/current.json?key=17a64fe7297444f39de144038220204&q=$cityname");
    http.Response response = await http.get(url);
    print(response.body);
    print("=========================");
    Map<String, dynamic> jsondata = jsonDecode(response.body);
    Weathermodel weatherdata = Weathermodel.fromJson(jsondata);
    return weatherdata;
  }
}
