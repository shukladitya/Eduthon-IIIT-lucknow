import 'package:flutter/material.dart';
import 'package:melab/BioData.dart';
import 'package:melab/ImortantTexts.dart';


class MBTResult extends StatefulWidget {
  @override
  _MBTResultState createState() => _MBTResultState();
}

class _MBTResultState extends State<MBTResult> {
  int selectedbutton = 1;
  Color b1 = Color(0xFF1F2531);
  Color b2 = Colors.white;
  Color b3 = Colors.white;
  Color b4 = Colors.white;
  buttonColourChanger() {
    if (selectedbutton == 1) {
      b1 = Color(0xFF1F2531);
      b2 = Colors.white;
      b3 = Colors.white;
      b4 = Colors.white;
    }
    if (selectedbutton == 2) {
      b2 = Color(0xFF1F2531);
      b1 = Colors.white;
      b3 = Colors.white;
      b4 = Colors.white;
    }
    if (selectedbutton == 3) {
      b3 = Color(0xFF1F2531);
      b1 = Colors.white;
      b2 = Colors.white;
      b4 = Colors.white;
    }
    if (selectedbutton == 4) {
      b4 = Color(0xFF1F2531);
      b1 = Colors.white;
      b2 = Colors.white;
      b3 = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(left: 5, right: 20, top: 33, bottom: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'mainpanel');
            },
            child: Row(
              children: <Widget>[
                Icon(Icons.arrow_back_ios),
                Text(
                  " Back To Tests",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Color(0xFF75CFE7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '$name, You are type:',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '${persontitle()}',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "${persontitleexpansion()}",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectedbutton = 1;
                        buttonColourChanger();
                      });
                    },
                    color: b1,
                    splashColor: Color(0xFF6EA6DE),
                    child: Text(
                      'Overview',
                      style: TextStyle(
                        color: Color(0xFF6EA6DE),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectedbutton = 2;
                        buttonColourChanger();
                      });
                    },
                    color: b2,
                    splashColor: Color(0xFF6EA6DE),
                    child: Text(
                      'Strengths',
                      style: TextStyle(
                        color: Color(0xFF6EA6DE),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectedbutton = 3;
                        buttonColourChanger();
                      });
                    },
                    color: b3,
                    splashColor: Color(0xFF6EA6DE),
                    child: Text(
                      'Careers',
                      style: TextStyle(
                        color: Color(0xFF6EA6DE),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectedbutton = 4;
                        buttonColourChanger();
                      });
                    },
                    color: b4,
                    splashColor: Color(0xFF6EA6DE),
                    child: Text(
                      'Relations',
                      style: TextStyle(
                        color: Color(0xFF6EA6DE),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 12,
          child: Container(
            child: ListView(
              children: <Widget>[
                Image.asset('images/${persontypeno()}$selectedbutton.jpg')
              ],
            ),
          ),
        )
      ],
    ));
  }
}
