import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/weathermodel.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class searchpage extends StatefulWidget {
  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  String cityname = "Cairo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          SizedBox(
            height: 45,
          ),
          Row(
            children: [
              Text(
                "Search a City",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8)),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            onSubmitted: (value) async {
             
              try {
                var connectivityResult =
                    await (Connectivity().checkConnectivity());
                if (connectivityResult == ConnectivityResult.none) {
                  print("no connection");
                    AwesomeDialog(
                     
                      context: context,dialogType: DialogType.ERROR,
                      btnOkOnPress: (){
                      
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(child: Text("please check internet connection status")),
                      ))..show();
                } else{
                   cityname = value;
                      Weatherservice service = Weatherservice();

                Weathermodel weather =
                    await service.getweather(cityname: cityname);

                Provider.of<Weatherprovider>(context, listen: false)
                    .weatherData = weather;

                Navigator.of(context).pushNamed("HomePage");
                print(weather.isday);
                }
               
              } catch (e) {
                print(e);
              }
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 109, 204, 204)),
                  borderRadius: BorderRadius.circular(15),
                ),
                label: Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                ),
                suffixIcon: Icon(Icons.search),
                suffixIconColor: Color.fromARGB(255, 109, 204, 204),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    gapPadding: 15),
                hintText: "Enter a City"),
          )
        ]),
      ),
    );
  }
}


//api key//   17a64fe7297444f39de144038220204