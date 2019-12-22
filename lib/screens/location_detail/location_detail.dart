import 'package:flutter/material.dart';



class LocationDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Text("Location page"),
      ),
    );
  }

}