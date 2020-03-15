import 'package:flutter/material.dart';

class HomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final principalBar = Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.white.withOpacity(0.8),
            size: 30.0,
          ),
          Expanded(
              child: Text(
            'FILM APP',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
          Icon(
            Icons.search,
            color: Colors.white.withOpacity(0.8),
            size: 30.0,
          )
        ],
      ),
    );

    final todayText = Container(
        margin: EdgeInsets.only(right: 10.0),
        child: Text(
          "Today",
          style: TextStyle(
              color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
        ));
    final daysText = Container(
        child: Text(
      "Mar 26   Mar 27    Mar 28    Mar 3",
      style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 20.0),
    ));

    final daysBar = Container(
      margin: EdgeInsets.only(top: 25.0, left: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[todayText, daysText],
      ),
    );

    final backgroundBox = ClipPath(
        clipper: HomeClipper(),
        child: Container(
          height: 250.0,
          padding: EdgeInsets.only(top: 50.0),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  stops: [0.2, 1],
                  colors: [Colors.purple, Colors.lightBlue])),
          child: Column(children: <Widget>[principalBar, daysBar]),
        ));

    return backgroundBox;
  }
}

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 165.0);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
