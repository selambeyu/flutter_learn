import 'package:flutter/material.dart';


import './product_manager.dart';

void main(){
  runApp(MyApp());

}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  var a="hello";
  // TODO: implement build
  return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
          title: Text("EasyList"
      ) ,
      ),
      body: ProductManager(),

  ),
  );


  }


}





