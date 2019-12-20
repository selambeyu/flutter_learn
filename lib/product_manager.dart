import 'package:flutter/material.dart';



import './products.dart';

class ProductManager extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }

}


class _ProductManagerState extends State<ProductManager>{
  List<String> _products =['Food Tester'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[

      RaisedButton(
        onPressed: (){
          setState(() {
            _products.add('Advanced value tester');
                print(_products);
          });
        },
        child: Text("Add"),
      ),
      RaisedButton(
        onPressed: (){
          _products.clear();
          print(_products);
        },
        child: Text("Delete"),
      ),Products(_products)
    ]);
  }

}

