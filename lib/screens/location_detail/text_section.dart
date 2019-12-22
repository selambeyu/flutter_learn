import 'package:flutter/material.dart';
import 'package:flutter_app/screens/location_detail/style.dart';



class TextSection extends StatelessWidget{
  final String _title;
  final String _body;
  static const _hpad= 16.0;

  TextSection(this._title, this._body);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0) ,
          child:Text(this._title,style: AppBarTextStyle),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, _hpad),
          child:  Text(this._body,style: BodyTextStyle),
        )

       
      ],
    );
  }

}