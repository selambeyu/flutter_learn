import 'package:flutter/material.dart';


class TextSection extends StatelessWidget{
  final String _title;
  final String _body;

  TextSection(this._title, this._body);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(this._title),
        Text(this._body),
      ],
    );
  }

}