import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                Row(
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
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${context.watch<Weatherprovider>().weatherData?.wind}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
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
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${context.watch<Weatherprovider>().weatherData?.humidity}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
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
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${context.watch<Weatherprovider>().weatherData?.wind_dir}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
            child: Column(
              children: [
                Row(
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
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${context.watch<Weatherprovider>().weatherData?.gust}",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
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
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${context.watch<Weatherprovider>().weatherData?.uv}",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
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
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${context.watch<Weatherprovider>().weatherData?.wind}",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            " pressure",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.6)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${context.watch<Weatherprovider>().weatherData?.pressure}",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            " preciptation",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.6)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${context.watch<Weatherprovider>().weatherData?.pricipe}",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "last apdat",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.6)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${context.watch<Weatherprovider>().weatherData?.last_update}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ]),
                Divider(
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      " localtime",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "${context.watch<Weatherprovider>().weatherData?.localtime}",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      " isday",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "${context.watch<Weatherprovider>().isday()}",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "feelslike",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "${context.watch<Weatherprovider>().weatherData?.feelslike}",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
