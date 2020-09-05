import 'package:flutter/material.dart';

class Aboutcolor extends StatefulWidget {
  @override
  _AboutcolorState createState() => _AboutcolorState();
}

class _AboutcolorState extends State<Aboutcolor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'images/color.JPG',
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 80),
              child: Text(
                'The Luscher color test is a psychological test invented by Dr. Max Lüscher in Basel, Switzerland.\n\nMax Lüscher believed that sensory perception of color is objective and universally shared by all, but that color preferences are subjective, and that this distinction allows subjective states to be objectively measured by using test colors.',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
