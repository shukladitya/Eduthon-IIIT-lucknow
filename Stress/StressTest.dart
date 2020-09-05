import 'dart:async';

import 'package:flutter/material.dart';
import 'package:melab/Stress/StressResult.dart';

class StressTest extends StatefulWidget {
  @override
  _StressTestState createState() => _StressTestState();
}

class _StressTestState extends State<StressTest> {
  Timer mbtimer;
  int counter = 200;
  int questionnumber = 1;
  int score = 0;
  List<String> questions = [
    'I do things slowly.',
    'My future seems hopeless.',
    'It is hard for me to concentrate on reading or other tasks.',
    'The pleasure and joy has gone out of my life.',
    'I have difficulty making decisions.',
    'I have lost interest in aspects of life that used to be important to me.',
    'I feel sad, blue, and unhappy most of the time.',
    'I am agitated and restless much of the time.',
    'I feel fatigued.',
    'It takes great effort for me to do simple things.',
    'I feel that I am a guilty person who deserves to be punished.',
    'I feel like a failure.',
    'I feel lifeless - - - more dead than alive.',
    'My sleep has been disturbed: too little, too much, or broken sleep.',
    'I spend time thinking about how I might kill myself.',
    'I feel trapped or caught.',
    'I feel depressed even when good things happen to me.',
    'Without trying to diet, I have lost, or gained, weight.'
  ];
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
                  '$questionnumber/18',
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
                '${questions[questionnumber - 1]}',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    if (questionnumber > 17) {
                      score = score + 0;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StressResult(score)));
                    }
                    if (questionnumber <= 17) {
                      setState(() {
                        score = score + 0;
                        questionnumber++;
                      });
                    }
                  },
                  child: Text(
                    '0',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  shape: CircleBorder(),
                  color: Color(0xFF75CFE7),
                  splashColor: Colors.white,
                ),
              ),
              Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    if (questionnumber > 17) {
                      score = score + 1;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StressResult(score)));
                    }
                    if (questionnumber <= 17) {
                      setState(() {
                        score = score + 1;
                        questionnumber++;
                      });
                    }
                  },
                  child: Text(
                    '1',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  shape: CircleBorder(),
                  color: Colors.blue[300],
                  splashColor: Colors.white,
                ),
              ),
              Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    if (questionnumber > 17) {
                      score = score + 2;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StressResult(score)));
                    }
                    if (questionnumber <= 17) {
                      setState(() {
                        score = score + 2;
                        questionnumber++;
                      });
                    }
                  },
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  shape: CircleBorder(),
                  color: Color(0xFF6EA6DE),
                  splashColor: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    if (questionnumber > 17) {
                      score = score + 3;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StressResult(score)));
                    }
                    if (questionnumber <= 17) {
                      setState(() {
                        score = score + 3;
                        questionnumber++;
                      });
                    }
                  },
                  child: Text(
                    '3',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  shape: CircleBorder(),
                  color: Colors.purple[200],
                  splashColor: Colors.white,
                ),
              ),
              Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    if (questionnumber > 17) {
                      score = score + 4;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StressResult(score)));
                    }
                    if (questionnumber <= 17) {
                      setState(() {
                        score = score + 4;
                        questionnumber++;
                      });
                    }
                  },
                  child: Text(
                    '4',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  shape: CircleBorder(),
                  color: Colors.purple[100],
                  splashColor: Colors.white,
                ),
              ),
              Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    if (questionnumber > 17) {
                      score = score + 5;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StressResult(score)));
                    }
                    if (questionnumber <= 17) {
                      setState(() {
                        score = score + 5;
                        questionnumber++;
                      });
                    }
                  },
                  child: Text(
                    '5',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  shape: CircleBorder(),
                  color: Colors.pink[100],
                  splashColor: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
