import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();

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
            FloatingActionButton(onPressed: () => () {}),
            Text("kuch nahi "),
          ],
        ));
  }
}
