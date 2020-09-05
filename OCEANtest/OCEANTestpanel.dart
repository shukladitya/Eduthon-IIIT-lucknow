import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melab/ImortantTexts.dart';

int oceantestgiven = 0;

class OCEANTestpanel extends StatefulWidget {
  @override
  _OCEANTestpanelState createState() => _OCEANTestpanelState();
}

class _OCEANTestpanelState extends State<OCEANTestpanel> {
  @override
  Timer mbtimer;
  int counter = 500;
  int questionnumber = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mbtimer = Timer.periodic(Duration(seconds: 1), (mbtimer) {
      if (counter > 0)
        setState(() {
          counter--;
        });
      else
        mbtimer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '$questionnumber/50',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1F2531),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.timer,
                      color: Colors.black45,
                      size: 30,
                    ),
                    (counter > 0)
                        ? Text(
                            ' $counter',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Colors.black45),
                          )
                        : Text(
                            ' Took too long to think.',
                            style: TextStyle(
                                color: Colors.red[300],
                                fontWeight: FontWeight.bold),
                          )
                  ],
                )
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              child: Text(
                '${oceanquestions[questionnumber - 1]}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF1F2531),
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (questionnumber < 50) {
                  questionnumber++;
                  optionselected.add(1);
                } else {
                  mbtimer.cancel();
                  optionselected.add(1);
                  oceantestgiven = 1;
                  Navigator.pushNamed(context, 'resultpanel');
                }
              });
            },
            child: Container(
              color: Color(0xFF75CFE7),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Text(
                  'Disagree',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (questionnumber < 50) {
                  questionnumber++;
                  optionselected.add(2);
                } else {
                  optionselected.add(2);
                  mbtimer.cancel();
                  oceantestgiven = 1;
                  Navigator.pushNamed(context, 'resultpanel');
                }
              });
            },
            child: Container(
              color: Colors.blue[300],
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Text(
                  'Slightly disagree',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (questionnumber < 50) {
                  questionnumber++;
                  optionselected.add(3);
                } else {
                  mbtimer.cancel();
                  optionselected.add(3);
                  oceantestgiven = 1;
                  Navigator.pushNamed(context, 'resultpanel');
                }
              });
            },
            child: Container(
              color: Color(0xFF6EA6DE),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Text(
                  'Neutral',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (questionnumber < 50) {
                  questionnumber++;
                  optionselected.add(4);
                } else {
                  mbtimer.cancel();
                  optionselected.add(4);
                  oceantestgiven = 1;
                  Navigator.pushNamed(context, 'resultpanel');
                }
              });
            },
            child: Container(
              color: Colors.purple[200],
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Text(
                  'Slightly agree',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (questionnumber < 50) {
                  questionnumber++;
                  optionselected.add(5);
                } else {
                  mbtimer.cancel();
                  optionselected.add(5);
                  oceantestgiven = 1;
                  Navigator.pushNamed(context, 'resultpanel');
                }
              });
            },
            child: Container(
              color: Colors.purple[100],
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Text(
                  'Agree',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
