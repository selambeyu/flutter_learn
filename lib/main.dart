import 'package:flutter/material.dart';
import './app.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: App(),
    );
  }

}