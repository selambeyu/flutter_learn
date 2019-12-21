import 'package:flutter/material.dart';


import 'package:english_words/english_words.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: RandomWord(),
    );
  }

}


class RandomWord extends StatefulWidget{
  @override
  RandomWordState createState() => RandomWordState();


}

class RandomWordState extends State<RandomWord>{
  final _randomWordPair=<WordPair>[];
  Widget _buildList(){
     return ListView(
       padding: const EdgeInsets.all(8),
       children: <Widget>[
         Container(
           height: 50,
           color: Colors.amber[600],
           child: const Center(child: Text('Entry A')),
         ),
         Container(
           height: 50,
           color: Colors.amber[500],
           child: const Center(child: Text('Entry B')),
         ),
         Container(
           height: 50,
           color: Colors.amber[100],
           child: const Center(child: Text('Entry C')),
         ),
       ],
     );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Word Pair Generator"),
        ),
        body: _buildList(),
      ),
    );
  }

}