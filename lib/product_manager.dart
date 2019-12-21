import 'package:flutter/material.dart';



import './products.dart';

class ProductManager extends StatefulWidget{
  final String startingProduct;
  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }

}


class _ProductManagerState extends State<ProductManager>{
  List<String> _products =[];

  @override
  void initState(){
    _products.add(widget.startingProduct);
    super.initState();

  }

  @override
  // ignore: must_call_super
  void didUpdateWidget(ProductManager oldWidget){
    print("[ProductManager State] didUpdateWidget()");
    super.didUpdateWidget(oldWidget);
  }

  _ProductManagerState();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[

      RaisedButton(
        onPressed: (){
          setState(() {
            _products.add(widget.startingProduct);
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

