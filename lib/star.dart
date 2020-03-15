import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.0),
      child: Icon(Icons.star, size: 12.0, color: Colors.lightBlue),
    );
  }
}
