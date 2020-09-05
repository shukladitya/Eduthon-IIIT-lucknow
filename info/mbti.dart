import 'package:flutter/material.dart';

class Aboutmbti extends StatefulWidget {
  @override
  _AboutmbtiState createState() => _AboutmbtiState();
}

class _AboutmbtiState extends State<Aboutmbti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('images/carl.jpg'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '• The original ideas of the Myers-Briggs Type Indicator (MBTI) were created by Carl Gustav Jung in 1921.\n• The actual test was officially published in 1962. The test was created to help determine which careers would be best for women as they entered the workforce for the first time during WWII.\n• It is a psychological analysis examination that determines a person’s psychological makeup and how they perceive and make decisions.\n\nThe test is made of four different dichotomies or personalitydescriptions. One can either be:\n1. Introverted or Extroverted\n2. Sensing or Intuitive\n3. Thinking or Feeling\n4. Judging or Perceptive',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
