import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:melab/ImortantTexts.dart';
import 'package:melab/OCEANtest/OCEANTestpanel.dart';

int colortestgiven = 0;

class COLORtestpanel extends StatefulWidget {
  @override
  _COLORtestpanelState createState() => _COLORtestpanelState();
}

class _COLORtestpanelState extends State<COLORtestpanel> {
  int timer = 10;
  int showtimer = 1;
  Color t1 = Colors.purple;
  Color t2 = Colors.red;
  Color t3 = Colors.black45;
  Color t4 = Colors.green;
  Color t5 = Colors.brown;
  Color t6 = Colors.blue;
  Color t7 = Colors.black87;
  Color t8 = Colors.yellow;
  Timer ticker;
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ticker = Timer.periodic(Duration(seconds: 1), (ticker) {
      setState(() {
        if (timer > 1 && counter < 7)
          timer--;
        else
          showtimer = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              showtimer == 1
                  ? Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Look at each colour ',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF1F2531),
                            ),
                          ),
                          Icon(
                            Icons.timer,
                            size: 40,
                            color: Colors.red,
                          ),
                          Text(
                            '$timer',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    )
                  : Expanded(
                      child: Text(
                        'Select a Colour you prefer the most.',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF1F2531),
                        ),
                      ),
                    )
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showtimer == 0) {
                      t1 = Colors.transparent;
                      showtimer = 1;
                      timer = 10;
                      counter++;
                      colorselcted.add('purple');
                    }
                    if (counter == 8) {
                      Navigator.pushNamed(context, 'resultpanel');
                      colortestgiven = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(70),
                  color: t1,
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showtimer == 0) {
                      t2 = Colors.transparent;
                      showtimer = 1;
                      timer = 10;
                      counter++;
                      colorselcted.add('red');
                    }
                    if (counter == 8) {
                      Navigator.pushNamed(context, 'resultpanel');
                      colortestgiven = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(70),
                  color: t2,
                  child: Text(''),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showtimer == 0) {
                      t3 = Colors.transparent;
                      showtimer = 1;
                      timer = 10;
                      counter++;
                      colorselcted.add('gray');
                    }
                    if (counter == 8) {
                      Navigator.pushNamed(context, 'resultpanel');
                      colortestgiven = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(70),
                  color: t3,
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showtimer == 0) {
                      t4 = Colors.transparent;
                      showtimer = 1;
                      timer = 10;
                      counter++;
                      colorselcted.add('green');
                    }
                    if (counter == 8) {
                      Navigator.pushNamed(context, 'resultpanel');
                      colortestgiven = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(70),
                  color: t4,
                  child: Text(''),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showtimer == 0) {
                      t5 = Colors.transparent;
                      showtimer = 1;
                      timer = 10;
                      counter++;
                      colorselcted.add('brown');
                    }
                    if (counter == 8) {
                      Navigator.pushNamed(context, 'resultpanel');
                      colortestgiven = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(70),
                  color: t5,
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showtimer == 0) {
                      t6 = Colors.transparent;
                      showtimer = 1;
                      timer = 10;
                      counter++;
                      colorselcted.add('blue');
                    }
                    if (counter == 8) {
                      Navigator.pushNamed(context, 'resultpanel');
                      colortestgiven = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(70),
                  color: t6,
                  child: Text(''),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showtimer == 0) {
                      t7 = Colors.transparent;
                      showtimer = 1;
                      timer = 10;
                      counter++;
                      colorselcted.add('black');
                    }
                    if (counter == 8) {
                      Navigator.pushNamed(context, 'resultpanel');
                      colortestgiven = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(70),
                  color: t7,
                  child: Text(''),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (showtimer == 0) {
                      t8 = Colors.transparent;
                      showtimer = 1;
                      timer = 10;
                      counter++;
                      colorselcted.add('yellow');
                    }
                    if (counter == 8) {
                      Navigator.pushNamed(context, 'resultpanel');
                      colortestgiven = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(70),
                  color: t8,
                  child: Text(''),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
