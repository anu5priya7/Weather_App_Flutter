import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void getData() async {
    Response response = await get(
        "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=d52ff08ee596defc32ab49ab298fd836"
            as Uri);
    Map data = jsonDecode(response.body);
    List Weather_data = data['weather'];
    Map weather_main_data = Weather_data[0];
    print(Weather_data);
    print(weather_main_data['main']);
  }

  int counter = 1;
  @override
  void initState() {
    super.initState();
    getData();
    print("this is a init state");
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("this is set state");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("widget destroyed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Home Acitivity"),
        ),
        body: Column(
          children: <Widget>[
            FloatingActionButton(
              onPressed: () => setState(() {
                counter += 1;
              }),
            ),
            Text("$counter"),
          ],
        ));
  }
}
