import 'package:flutter/material.dart';
import 'package:weather_app/Activity/home.dart';
import 'package:weather_app/Activity/loading.dart';
import 'package:weather_app/Activity/loading.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/" : (context)=> Loading(),
      "/home" : (context) => Home(),
    },
  )
  );
}



