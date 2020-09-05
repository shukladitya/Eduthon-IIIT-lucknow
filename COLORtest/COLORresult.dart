import 'package:flutter/material.dart';
import 'package:melab/COLORtest/COLORresulttileexpansion.dart';

class COLORresult extends StatefulWidget {
  @override
  _COLORresultState createState() => _COLORresultState();
}

class _COLORresultState extends State<COLORresult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                pagenogiven = 1;
                Navigator.pushNamed(context, 'colortile');
              },
              child: Container(
                color: Color(0xFF75CFE7),
                child: Center(
                    child: Text(
                  'Your personal brand',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                pagenogiven = 2;
                Navigator.pushNamed(context, 'colortile');
              },
              child: Container(
                color: Colors.blue[300],
                child: Center(
                    child: Text(
                  'The true you',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                pagenogiven = 3;
                Navigator.pushNamed(context, 'colortile');
              },
              child: Container(
                color: Color(0xFF6EA6DE),
                child: Center(
                    child: Text(
                  'Actual state of affairs',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                pagenogiven = 4;
                Navigator.pushNamed(context, 'colortile');
              },
              child: Container(
                color: Colors.purple[200],
                child: Center(
                    child: Text(
                  'Not rejected, but not in use',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                pagenogiven = 5;
                Navigator.pushNamed(context, 'colortile');
              },
              child: Container(
                color: Colors.purple[100],
                child: Center(
                    child: Text(
                  'Turning away from',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
