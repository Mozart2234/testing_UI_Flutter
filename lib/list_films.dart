import 'package:flutter/material.dart';
import 'film.dart';

class ListFilms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 180.0),
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          Film(),
          Film(),
          Film(),
          Film(),
          Film(),
          Film(),
          Film()
        ],
      ),
    );
  }
}
