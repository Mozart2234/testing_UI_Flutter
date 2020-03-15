import 'package:flutter/material.dart';
import './star.dart';

class Film extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageCover = Container(
      height: 90.0,
      width: 80.0,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://smoda.elpais.com/wp-content/uploads/2016/11/moonlight-cover-635x480.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                offset: Offset(0.1, 0.1),
                blurRadius: 2.0)
          ]),
    );
    final title = Container(
      margin: EdgeInsets.only(bottom: 5.0),
      child: Text('Moonlight',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0)),
    );
    final author = Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Text('by Johnatan Rickfar',
          style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.normal,
              fontSize: 12.0)),
    );

    final rating = Container(
        margin: EdgeInsets.only(bottom: 15.0),
        child: Row(
          children: <Widget>[Star(), Star(), Star(), Star(), Star()],
        ));

    final gnre = Container(
        child: Text(
      "Drama | Detectiv",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12.0),
    ));

    final mainContent = Container(
      height: 100.0,
      margin: EdgeInsets.only(left: 60.0),
      padding: EdgeInsets.only(top: 10.0, left: 40.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black38, offset: Offset(0.5, 0.5))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[title, author, rating, gnre],
      ),
    );

    final time = Container(
      child: Text('1h 15m',
          style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.normal,
              fontSize: 12.0)),
    );

    final button = FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.confirmation_number),
      backgroundColor: Colors.lightBlue,
    );

    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            mainContent,
            Positioned(bottom: 20.0, child: imageCover),
            Positioned(bottom: 0.0, child: time),
            Positioned(bottom: -15.0, right: 10.0, child: button),
          ],
        ));
  }
}
