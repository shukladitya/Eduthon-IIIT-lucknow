import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melab/Stress/counsellorinfo.dart';

class StressResult extends StatefulWidget {
  int score;
  StressResult(this.score);
  @override
  _StressResultState createState() => _StressResultState();
}

class _StressResultState extends State<StressResult> {
  String condition() {
    if (widget.score > 53) return 'You are Severely Depressed';
    if (widget.score > 35)
      return 'You are Suffering from Moderate to Severe Depression';
    if (widget.score > 22)
      return 'You are Suffering from Mild to Moderate Depression';
    if (widget.score > 10)
      return 'You have Possible symptoms that may be due to depression or other medical issues';
    if (widget.score > 0) return 'No depression likely';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Text(
              condition(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Your Score is ${widget.score}.',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Available counsellors:',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CounsellorInfo(1)));
                },
                child: Container(
                  color: Color(0xFF75CFE7),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/doctor1.jpg')),
                      ),
                      Text(
                        'Dr. Amrita Singh',
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CounsellorInfo(2)));
                },
                child: Container(
                  color: Color(0xFF6EA6DE),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/doctor2.jpg')),
                      ),
                      Text(
                        'Anuradha Kishore',
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CounsellorInfo(3)));
                },
                child: Container(
                  color: Colors.purple[100],
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/doctor3.jpg')),
                      ),
                      Text(
                        'Dr. Rahul Dasondi',
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
