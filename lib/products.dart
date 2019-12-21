import 'package:flutter/material.dart';

class Products extends StatelessWidget{
  final List<String> products;
  Products(this.products){
    print('[Products Widget] Constructor');

  }
  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    // TODO: implement build
    return  Column(children:  products.map((element) => Card(
      child: Column(children: <Widget>[
//        Image.asset('assets/images/food.jpeg', width: double.maxFinite, fit: BoxFit.fitWidth),
        Text(element)
      ],
      ),

    )).toList(),);
  }


}