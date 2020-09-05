import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melab/Stress/StressTest.dart';

class Stress extends StatefulWidget {
  @override
  _StressState createState() => _StressState();
}

class _StressState extends State<Stress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/stress3.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Dr. Goldberg’s Depression Screening Questionnaire. It is best if you use the results to identify possible symptoms and for seeking professional assistance.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => StressTest())));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF6EA6DE),
                        size: 70,
                      ),
                      Text(
                        'Start',
                        style: TextStyle(
                            color: Colors.blueGrey[300], fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
