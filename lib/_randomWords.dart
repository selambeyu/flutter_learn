import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWord extends StatefulWidget{
  @override
  RandomWordState createState() => RandomWordState();


}



class RandomWordState extends State<RandomWord>{
  final _randomWordPair=<WordPair>[];
  Widget _buildList(){
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, item){
        if(item.isOdd) return Divider();
        final index = item ~/2;

        if(index>= _randomWordPair.length){
          _randomWordPair.addAll(generateWordPairs().take(10));

          // ignore: missing_return
        }
        return _buildRow(_randomWordPair[index]);

      },
    );
  }

  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(pair.asPascalCase,style: TextStyle(fontSize: 18.0),),

    );



  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Word Pair Generator"),
        ),
        body: _buildList(),
      ),
    );
  }

}