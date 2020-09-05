import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CounsellorInfo extends StatefulWidget {
  int no;
  CounsellorInfo(this.no);
  @override
  _CounsellorInfoState createState() => _CounsellorInfoState();
}

class _CounsellorInfoState extends State<CounsellorInfo> {
  List<String> name = [
    'Dr. Amrita Singh',
    'Anuradha Kishore',
    'Dr. Rahul Dasondi'
  ];
  List<String> description = [
    'Amrita Singh is an expert and well-known counsellor in New Delhi and works persistently to help students realize their dreams. She holds a PhD and MA in Psychology along with being a Green Belt Certified Global Career Counsellor from the University of California, Los Angeles Extension ( UCLA Extension) & Univariety.',
    'Anuradha is a Bachelors in Science from Bangalore University and a Certified Global Career Counsellor by UCLA Extension & Univariety. She has undergone Train the Trainer Course by PROTOCOL and also a Certified Technical writer by Winprotech. She has been motivating individuals belonging from a diverse range of skill sets with varied professional and personal profiles.',
    'Rahul Dasondi is an ambitious professional who has the passion for career counselling. A Mechanical Engineer by his academic qualification and a certified Global Career Counsellor by profession from the University of California, Los Angeles Extension and Univariety, Mr. Rahul Dasondi has a vast knowledge and compassion towards this field. Along with working in an NGO, he also takes up counselling workshops in schools & colleges.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'mainpanel');
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.black45,
                  ),
                  Text(
                    '  Back to home',
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            ),
          ),
          CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/doctor${widget.no}.jpg')),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              '${name[widget.no - 1]}',
              style: TextStyle(color: Colors.black45, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Text(
              '${description[widget.no - 1]}',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    const url = 'tel:+1 555 010 999';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    color: Color(0xFF6EA6DE),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(Icons.call),
                              ),
                              Text(
                                '  Call for appointment',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.play_circle_filled,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const url =
                        'mailto:counsellor@dotes.org?subject=counselling(user an Dotes)=New%20plugin';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    color: Colors.purple[100],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(Icons.email),
                              ),
                              Text(
                                '  Email',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.play_circle_filled,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
