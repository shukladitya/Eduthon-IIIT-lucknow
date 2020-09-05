import 'package:flutter/material.dart';

class COLORinstructions extends StatefulWidget {
  @override
  _COLORinstructionsState createState() => _COLORinstructionsState();
}

class _COLORinstructionsState extends State<COLORinstructions> {
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
                    image: AssetImage('images/ci1.jpg'), fit: BoxFit.cover)),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Instructions:      1/1',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Lüscher Color Test, The remarkable test that reveals personality through colours, sensory perception of color is objective and universally shared by all, but that color preferences are subjective, and that this distinction allows subjective states to objectively measure by using test colors.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.black45),
                    ),
                  ],
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
                      onPressed: () {},
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'colortestpanel');
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
