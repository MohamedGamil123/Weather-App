import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/pages/details.dart';
import 'package:weather_app/pages/homepage.dart';
import 'package:geocoding/geocoding.dart';
import 'package:weather_app/pages/search.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'getloactoin.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return Weatherprovider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "searchpage": (context) => searchpage(),
        "HomePage": (context) => HomePage(),
        "Details": (context) => Details()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.courgetteTextTheme(),
          scaffoldBackgroundColor: Color.fromARGB(255, 5, 0, 27),
          hintColor: Colors.white),
      home: searchpage(),
    );
  }
}
