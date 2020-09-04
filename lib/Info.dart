import 'package:flutter/material.dart';
import 'package:melab/info/color.dart';
import 'package:melab/info/mbti.dart';
import 'package:melab/info/ocean.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Aboutmbti();
              }));
            },
            child: Container(
              color: Color(0xFF75CFE7),
              child: Center(
                  child: Text(
                'More About MBTI',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              )),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Aboutocean();
              }));
            },
            child: Container(
              color: Colors.blue[300],
              child: Center(
                  child: Text(
                'More About OCEAN',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              )),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Aboutcolor();
              }));
            },
            child: Container(
              color: Color(0xFF6EA6DE),
              child: Center(
                  child: Text(
                "More about Lüscher Color Test",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              )),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.purple[200],
            child: Center(
                child: Text(
              'Connect with a counselor',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            )),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.purple[100],
            child: Center(
                child: Text(
              'About the app',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            )),
          ),
        ),
      ],
    ));
  }
}
