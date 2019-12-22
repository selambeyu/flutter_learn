import 'package:flutter/material.dart';

import './text_section.dart';
import './image_banner.dart';



class LocationDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Location Detail"),
        ),
        body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("./assets/images/chilada.jpeg"),
            TextSection("Chilada Baboon","The gelada, sometimes called the bleeding-heart monkey or the gelada \"baboon\", is a species of Old World monkey found only in the Ethiopian Highlands."),
            TextSection("Section one","this section contain the overview about turism"),
            TextSection("Section two","this section contain the detail about tourism in ethiopia"),
          ],
        ),
      ),
    );
  }

}