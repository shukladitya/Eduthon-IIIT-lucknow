import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melab/ImortantTexts.dart';

class FirstTime extends StatefulWidget {
  @override
  _FirstTimeState createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  int imageno = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          flex: 5,
          child: Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/i$imageno.jpg'),
                    fit: BoxFit.cover)),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  '$imageno/3',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Text(
                  disc[imageno - 1],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black45),
                ),
              )
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: Container(
            height: 80,
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'biodata');
                      },
                      splashColor: Color(0xFF6EA6DE),
                      highlightColor: Color(0xFF6EA6DE),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.close,
                              color: Color(0xFF6EA6DE),
                              size: 30,
                            ),
                            Text(
                              'Skip',
                              style: TextStyle(
                                  color: Colors.blueGrey[300], fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          if (imageno < 3)
                            imageno++;
                          else
                            Navigator.pushNamed(context, 'biodata');
                        });
                      },
                      highlightColor: Color(0xFF6EA6DE),
                      splashColor: Color(0xFF1F2531),
                      color: Color(0xFF1F2531),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF6EA6DE),
                              size: 30,
                            ),
                            Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.blueGrey[300], fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
