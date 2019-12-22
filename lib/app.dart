import 'package:flutter/material.dart';
import './screens/location_detail/style.dart';
import './screens/location_detail/location_detail.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle)
        )
      ),
    );
  }

}