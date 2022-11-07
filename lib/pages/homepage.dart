import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';
import '../weathermodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(

        // ignore: unnecessary_null_comparison
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(children: [
        Container(
          width: _size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 5, 0, 27),
                Color.fromARGB(255, 109, 204, 204)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 0.8],
            ),
          ),
          child: Column(children: [
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  iconSize: 35,
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed("searchpage");
                  },
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                  "${context.watch<Weatherprovider>().weatherData?.cityname}",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.8)),
                ))),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Consumer<Weatherprovider>(builder: (context, value, child) => Text(
              "${value.weatherData!.last_update}",
              style: 
                  TextStyle(fontSize: 15, color: Colors.white.withOpacity(.7)),
            ),),
            Container(
                child: Image.asset(
              "${context.watch<Weatherprovider>().getimage()}",
              height: _size.height * .27,
            )),
            Text(
              "${Provider.of<Weatherprovider>(context).weatherData!.condition}",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(.7)),
            ),
            InkWell(
                onTap: () => (Navigator.of(context).pushNamed("Details")),
                child: Text(
                  "${context.watch<Weatherprovider>().weatherData?.temp} ْ c",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/3.png",
                        height: _size.height * .06,
                      ),
                      Text(
                        " Wind",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.7)),
                      ),
                      InkWell(
                          onTap: () =>
                              (Navigator.of(context).pushNamed("Details")),
                          child: Text(
                            "${context.watch<Weatherprovider>().weatherData?.wind}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "images/5.png",
                        height: _size.height * .065,
                      ),
                      Text(
                        " Humidity",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.7)),
                      ),
                      InkWell(
                          onTap: () =>
                              (Navigator.of(context).pushNamed("Details")),
                          child: Text(
                            "${context.watch<Weatherprovider>().weatherData?.humidity}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "images/4.png",
                        height: _size.height * .065,
                      ),
                      Text(
                        " Wind direction",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.7)),
                      ),
                      InkWell(
                          onTap: () =>
                              (Navigator.of(context).pushNamed("Details")),
                          child: Text(
                            "${context.watch<Weatherprovider>().weatherData?.wind_dir}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    " Gust",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                  InkWell(
                      onTap: () => (Navigator.of(context).pushNamed("Details")),
                      child: Text(
                        "${context.watch<Weatherprovider>().weatherData?.gust}",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    " pressure",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                  InkWell(
                      onTap: () => (Navigator.of(context).pushNamed("Details")),
                      child: Text(
                        "${context.watch<Weatherprovider>().weatherData?.pressure}",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ],
              ),
              Column(
                children: [
                  Text(
                    " UV",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                  InkWell(
                      onTap: () => (Navigator.of(context).pushNamed("Details")),
                      child: Text(
                        "${context.watch<Weatherprovider>().weatherData?.uv}",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    " preciptation",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                  InkWell(
                      child: Text(
                    "${context.watch<Weatherprovider>().weatherData?.pricipe}",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Wind",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                  InkWell(
                      onTap: () => (Navigator.of(context).pushNamed("Details")),
                      child: Text(
                        "${context.watch<Weatherprovider>().weatherData?.wind}",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "last apdat",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.6)),
                  ),
                  InkWell(
                      onTap: () => (Navigator.of(context).pushNamed("Details")),
                      child: Text(
                        "${context.watch<Weatherprovider>().weatherData?.last_update}",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        )
      ]),
    ));
  }
}
