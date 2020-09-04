import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melab/ImortantTexts.dart';

int mbtestgiven = 0;

class TestPanel extends StatefulWidget {
  @override
  _TestPanelState createState() => _TestPanelState();
}

class _TestPanelState extends State<TestPanel> {
  Timer mbtimer;
  int counter = 200;
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
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '$questionnumber/20',
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
                '${mbquestionbank[questionnumber - 1]}',
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
                if (questionnumber < 20) {
                  mbscorecalculator(questionnumber - 1, 0);
                  questionnumber++;
                } else {
                  mbtimer.cancel();
                  mbtestgiven = 1;
                  Calculatetype();
                  Navigator.pushNamed(context, 'resultpanel');
                }
              });
            },
            child: Container(
              color: Color(0xFF75CFE7),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Text(
                  '${mboptionbank[questionnumber - 1][0]}',
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
                if (questionnumber < 20) {
                  mbscorecalculator(questionnumber - 1, 1);
                  questionnumber++;
                } else {
                  mbtimer.cancel();
                  mbtestgiven = 1;
                  Calculatetype();
                  Navigator.pushNamed(context, 'resultpanel');
                }
              });
            },
            child: Container(
              color: Color(0xFF6EA6DE),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Text(
                  '${mboptionbank[questionnumber - 1][1]}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
            ),
          ),
          Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
