import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

String name;
var age;

class BioData extends StatefulWidget {
  @override
  _BioDataState createState() => _BioDataState();
}

class _BioDataState extends State<BioData> {
  TextEditingController finalname = new TextEditingController();
  TextEditingController finalage = new TextEditingController();

  var username;
  var userage;
  FocusNode namefocus = FocusNode();
  FocusNode agefocus = FocusNode();
  storename() async {
    SharedPreferences prefrences = await SharedPreferences.getInstance();
    prefrences.setString('username', name);
    prefrences.setString('userage', age);
  }

  getname() async {
    SharedPreferences prefrences = await SharedPreferences.getInstance();
    username = prefrences.getString('username');
    userage = prefrences.getString('userage');
    finalname.text = username;
    finalage.text = userage;
    name = username;
    age = userage;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getname();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
              fit: FlexFit.loose,
              flex: 7,
              child: ListView(
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 40, bottom: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Profile',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 7, left: 20, right: 20, bottom: 12),
                                child: Text(
                                  '“It is never too late to be what you might have been.”',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20,
                                      color: Colors.black45),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                color: Color(0xFF75CFE7),
                                padding: EdgeInsets.symmetric(
                                    vertical: 50, horizontal: 20),
                                child: TextField(
                                  onChanged: (value) {
                                    name = value;
                                  },
                                  focusNode: namefocus,
                                  decoration: InputDecoration(
                                      hintText: 'First Name:',
                                      hintStyle: TextStyle(
                                          color: Color(0xFF1F2531),
                                          fontSize: 18),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                  controller: finalname,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 50, horizontal: 20),
                                color: Color(0xFF6EA6DE),
                                child: TextField(
                                  onChanged: (value) {
                                    age = value;
                                  },
                                  focusNode: agefocus,
                                  decoration: InputDecoration(
                                      hintText: 'Age:',
                                      hintStyle: TextStyle(
                                          color: Color(0xFF1F2531),
                                          fontSize: 18),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                  controller: finalage,
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ],
              )),

          ///////////Bottom Buttons
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
                            finalname.clear();
                            finalage.clear();
                          },
                          splashColor: Color(0xFF6EA6DE),
                          highlightColor: Color(0xFF6EA6DE),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.refresh,
                                  color: Color(0xFF6EA6DE),
                                  size: 30,
                                ),
                                Text(
                                  'Clear',
                                  style: TextStyle(
                                      color: Colors.blueGrey[300],
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: MaterialButton(
                          onPressed: () {
                            if (name == null && age == null)
                              namefocus.requestFocus();
                            else if (age == null && name != null)
                              agefocus.requestFocus();
                            else if (age != null && name == null)
                              namefocus.requestFocus();
                            else {
                              storename();
                              Navigator.pushNamed(context, 'mainpanel');
                            }
                          },
                          highlightColor: Color(0xFF6EA6DE),
                          splashColor: Color(0xFF1F2531),
                          color: Color(0xFF1F2531),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check,
                                  color: Color(0xFF6EA6DE),
                                  size: 30,
                                ),
                                Text(
                                  'Done',
                                  style: TextStyle(
                                      color: Colors.blueGrey[300],
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
