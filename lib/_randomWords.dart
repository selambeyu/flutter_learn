import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWord extends StatefulWidget{
  @override
  RandomWordState createState() => RandomWordState();


}



class RandomWordState extends State<RandomWord>{
  final _randomWordPair=<WordPair>[];
  final _saveWordsPair=Set<WordPair>();
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
    final _alredySaved=_saveWordsPair.contains(pair);
    return ListTile(
      title: Text(pair.asPascalCase,style: TextStyle(fontSize: 18.0),),
      trailing: Icon(_alredySaved ? Icons.favorite: Icons.favorite_border,color: _alredySaved ? Colors.red: null,),
      onTap: (){
        setState(() {
          if(_alredySaved){
            _saveWordsPair.remove(pair);
          }else{
            _saveWordsPair.add(pair);
          }
        });
      },

    );



  }

  void _pushedSaved(){
     Navigator.of(context).push(
       MaterialPageRoute(
         builder: (BuildContext context){
           final Iterable<ListTile> tiles=_saveWordsPair.map((WordPair pair){
             return ListTile(
               title: Text(pair.asPascalCase,style: TextStyle(fontSize: 16.0)
               )
             );

           });
           final List<Widget> divided=ListTile.divideTiles(context: context,tiles: tiles).toList();
           return Scaffold(
             appBar: AppBar(
               title: Text("Saved wordPairs"),
             ),
             body: ListView(children: divided,),
           );

       }

       )
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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              onPressed: _pushedSaved,
            )
          ],
        ),
        body: _buildList(),
      ),
    );
  }

}