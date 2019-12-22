import 'package:flutter/material.dart';

import './text_section.dart';
import './image_banner.dart';
import '../../models/location.dart';



class LocationDetail extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location= locations.first;
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),

          ]..addAll(textSection(location)),
        ),
      ),
    );
  }

  List<Widget> textSection(Location location){
    return location.fact.map((fact)=> TextSection(
      fact.title,fact.text
    )).toList();
  }

}