import 'package:flutter/material.dart';

class Weathermodel {
  final String? cityname;
  final String? icon;
  final String? condition;
  final double? temp;
  final double? wind;
  final int? humidity;
  final String? wind_dir;
  final double? gust;
  final double? uv;
  final double? pressure;
  final double? pricipe;
  final String? last_update;
  final String? localtime;
  final int? isday;
  final double? feelslike;
  Weathermodel(
      {@required this.cityname="damietta",
      @required this.icon,
      @required this.condition,
      @required this.temp,
      @required this.wind,
      @required this.humidity,
      @required this.wind_dir,
      @required this.gust,
      @required this.uv,
      @required this.pressure,
      @required this.pricipe,
      @required this.last_update,
      @required this.localtime,
      @required this.isday,
      @required this.feelslike});
  factory Weathermodel.fromJson(Map<String, dynamic> jsondata) {
    return Weathermodel(
        cityname: jsondata["location"]["name"],
        icon: jsondata["current"]["condition"]["icon"],
        condition: jsondata["current"]["condition"]["text"],
        temp: jsondata["current"]["temp_c"],
        wind: jsondata["current"]["wind_kph"],
        humidity: jsondata["current"]["humidity"],
        wind_dir: jsondata["current"]["wind_dir"],
        gust: jsondata["current"]["gust_kph"],
        uv: jsondata["current"]["uv"],
        pressure: jsondata["current"]["pressure_mb"],
        pricipe: jsondata["current"]["precip_mm"],
        last_update: jsondata["current"]["last_updated"],
        localtime: jsondata["location"]["localtime"],
        isday: jsondata["current"]["is_day"],
        feelslike: jsondata["current"]["feelslike_c"]);
  }
}

/*FutureBuilder(
        future:parameter_ ,
        builder:(context,snapshot){
         if(snapshot.hasData){
           return
         }
        },
        )*/
       /* SingleChildScrollView(
       physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            
            Container(
              height: _size.height*0.80,
              width: _size.width,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight: Radius.circular(50)),
                gradient:LinearGradient(
                  colors: [
                    Color.fromARGB(255, 5, 0, 27),
                    
                    Color.fromARGB(255, 109, 204, 204)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2,0.8],) ,
              ),
              child:Column(children: [
                SizedBox(height: 35,),
                Text(${parameter_}, style: TextStyle(fontSize: 45,  fontWeight: FontWeight.bold,color: Colors.white.withOpacity(0.8)),),
                SizedBox(height: 10,),
      
                Text("sunday,2/2/2022", style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(.7)),),
                Container(
              
                  child: Image.asset("images/1.png",height: _size.height*.27, )),
                 
                 Text("Sunny", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.7)),),
                 Text("15 ْ c", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(children: [
                  Image.asset("images/3.png",height: _size.height*.06, ),
                  Text(" Wind", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.7)),),
                  Text(" 17.2 km/h", style: TextStyle(fontSize: 20,  fontWeight: FontWeight.bold,color: Colors.white),),
      
                  ],),
                  Column(children: [
                  Image.asset("images/5.png",height: _size.height*.065, ),
                  Text(" Humidity", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.7)),),
                  Text(" 81", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
      
                  ],),
                  Column(children: [
                  Image.asset("images/4.png",height: _size.height*.065, ),
                  Text(" Wind direction", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.7)),),
                  Text(" 17.2 km/h", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                  ],),],)                
              ]) ,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(children: [
                    Text(" Gust", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.6)),),
                    Text(" 17.2 km/h", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                    SizedBox(height: 30,),
                    Text(" pressure", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.6)),),
                    Text(" 17.2 km/h", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
      
                  ],),
                  Column(children: [
                    Text(" UV", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.6)),),
                    Text(" 1.0", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                    SizedBox(height: 30,),
                    Text(" preciptation", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.6)),),
                    Text(" 0.0 mm", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
      
                  ],),
                  Column(children: [
                    Text("Wind", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.6)),),
                    Text(" 17.2 km/h", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                   SizedBox(height: 30,),
                    Text("last apdat", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.6)),),
                    Text(" 21/3/2022", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                  
                  ],),
                ],),
                
              ),
                SizedBox(height: 50,)
          ]),
      ) ;*/