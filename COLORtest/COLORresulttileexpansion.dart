import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melab/ImortantTexts.dart';

class COLORresulttileexpansion extends StatefulWidget {
  @override
  _COLORresulttileexpansionState createState() =>
      _COLORresulttileexpansionState();
}

int pagenogiven = 1;
String concatinat(pge) {
  if (pge == 1 || pge == 2) return coloropenion(colorselcted[pagenogiven - 1]);
  if (pge == 3)
    return coloropenion(colorselcted[2]) + coloropenion(colorselcted[3]);
  if (pge == 4)
    return coloropenion(colorselcted[4]) + coloropenion(colorselcted[5]);
  if (pge == 5)
    return coloropenion(colorselcted[6]) + coloropenion(colorselcted[7]);
}

class _COLORresulttileexpansionState extends State<COLORresulttileexpansion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Color(0xFF75CFE7),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '${pagepara(pagenogiven)}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54),
                ),
              ),
            ),
            Container(
              color: Color(0xFF6EA6DE),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '${concatinat(pagenogiven)}',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
