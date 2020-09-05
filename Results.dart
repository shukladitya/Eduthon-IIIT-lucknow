import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melab/BioData.dart';
import 'package:melab/COLORtest/COLORtestpanel.dart';
import 'package:melab/ImortantTexts.dart';
import 'file:///C:/Users/Aditya/Music/dotes/lib/MB%20personality%20test/TestPanel.dart';
import 'OCEANtest/OCEANTestpanel.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '$name\'s Results',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 40),
                child: Text(
                  'Result is unlocked after you give a test in test section.',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.black45),
                ),
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    if (mbtestgiven == 1)
                      Navigator.pushNamed(context, 'mbtresult');
                  },
                  child: Container(
                    color: Color(0xFF75CFE7),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          mbtestgiven == 1
                              ? Text(
                                  'MBPT Results Available.',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                )
                              : Text(
                                  'MBP Test not given.',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                ),
                          mbtestgiven == 1
                              ? Icon(
                                  Icons.assignment,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.lock,
                                  color: Colors.red[400],
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    if (oceantestgiven == 1) {
                      print(optionselected);
                      oceanscorecalculator();
                      print(O);
                      print(C);
                      print(E);
                      print(A);
                      print(N);
                      Navigator.pushNamed(context, 'oceanresult');
                    }
                  },
                  child: Container(
                    color: Color(0xFF6EA6DE),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          oceantestgiven == 1
                              ? Text(
                                  'OCEAN Results Available',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                )
                              : Text(
                                  'Ocean Test not given.',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                ),
                          oceantestgiven == 1
                              ? Icon(
                                  Icons.assignment,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.lock,
                                  color: Colors.red[400],
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    if (colortestgiven == 1)
                      Navigator.pushNamed(context, 'colorresult');
                  },
                  child: Container(
                    color: Colors.purple[100],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          colortestgiven == 1
                              ? Text(
                                  'Colour Results Available',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                )
                              : Text(
                                  'Colour Test not given.',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                ),
                          colortestgiven == 1
                              ? Icon(
                                  Icons.assignment,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.lock,
                                  color: Colors.red[400],
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 45),
                            child: OutlineButton(
                              padding: EdgeInsets.all(5),
                              onPressed: () {
                                Navigator.pushNamed(context, 'mainpanel');
                              },
                              highlightedBorderColor: Colors.blueAccent,
                              borderSide: BorderSide(
                                  color: Color(0xFF75CFE7), width: 3),
                              highlightColor: Colors.blue[200],
                              child: Image.asset(
                                'images/logo.png',
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.history,
                                  size: 30, color: Colors.black45),
                              Text(
                                " History",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black45),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
