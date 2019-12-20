import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

 

class _MyAppState extends State<MyApp>{
  List<String> _products =['Food Tester'];
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
        body: Column(children: [
         Container(
           margin: EdgeInsets.all(10.0),
           child: RaisedButton(
             onPressed: (){
                setState(() {
                  _products.add("Advanced value tester");
                 print(_products);
                });
             },
             child: Text("Add product"),
           ),
         ),
          Column(children:  _products.map((element) => Card(
            child: Column(children: <Widget>[
              Image.asset('assets/images/food.jpeg', width: double.maxFinite, fit: BoxFit.fitWidth),
              Text(element)
            ],
            ),

          )).toList(),),

        ],

        )),
        );


  }

}