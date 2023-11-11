import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/main.dart';

class worker {
  late String location;

  worker({required this.location}) {
    location = this.location;
  }


  late String temp;
  late String humidity;
  late String air_speed;
  late String description;
  late String main;




    Future <void> getData() async {
      String url =   'https://api.openweathermap.org/data/2.5/weather?q=Sangrur&appid=d52ff08ee596defc32ab49ab298fd836';
    Response response = await get(Uri.parse(url));
    Map data = jsonDecode(response.body);

    //getting temp, Humidity
    Map temp_data = data['main'];
    double getHumidity = temp_data['humidity'];
    double getTemp = temp_data['temp'];

    //getting air_speed
    Map wind = data['wind'];
    double getAir_speed = wind['speed'];

    //getting description
    List weather_data = data['weather'];
    Map weather_main_data = weather_data[0];
    String getMain_des = weather_main_data['main'];
    String getDesc = weather_main_data['description'];

    //Assigning value
    temp = getTemp.toString();
    humidity = getHumidity.toString();
    air_speed = getAir_speed.toString();
    description = getDesc;
    main = getMain_des;

  }

}

