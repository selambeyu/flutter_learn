import 'package:flutter/material.dart';


class ImageBanner extends StatelessWidget{
  final String _assetpath;
  ImageBanner(this._assetpath);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(_assetpath),
    );
  }

}