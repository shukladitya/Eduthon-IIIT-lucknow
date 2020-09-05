import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melab/BioData.dart';
import 'package:melab/ImortantTexts.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

class OCEANResult extends StatefulWidget {
  @override
  _OCEANResultState createState() => _OCEANResultState();
}

class _OCEANResultState extends State<OCEANResult> {
  ScrollController bottomscroll = ScrollController();
  int scrolled = 0;
  Widget Buildosheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Openness',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'images/po.png',
                height: 150,
              )
            ],
          ),
          Text(
              'This trait features characteristics such as imagination and insight. People who are high in this trait also tend to have a broad range of interests. They are curious about the world and other people and eager to learn new things and enjoy new experiences.\n\nPeople who are high in this trait tend to be more adventurous and creative. People low in this trait are often much more traditional and may struggle with abstract thinking.\n'),
          Text(
            'Score Range\n',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('  <10 Extremely Low\n\n  <30 Moderate'),
              Text('<25 Low      \n\n>30 High      ')
            ],
          )
        ],
      ),
    );
  }

  Widget Buildcsheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  'Conscientiousness',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                'images/pc.png',
                height: 150,
              )
            ],
          ),
          Text(
              'Standard features of this dimension include high levels of thoughtfulness, good impulse control, and goal-directed behaviors. Highly conscientious people tend to be organized and mindful of details. They plan ahead, think about how their behavior affects others, and are mindful of deadlines.\n'),
          Text(
            'Score Range\n',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('  <10 Extremely Low\n\n  <30 Moderate'),
              Text('<26 Low      \n\n>30 High      ')
            ],
          )
        ],
      ),
    );
  }

  Widget Buildesheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Extraversion',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'images/pe.png',
                height: 150,
              )
            ],
          ),
          Text(
              'Extraversion (or extroversion) is characterized by excitability, sociability, talkativeness, assertiveness, and high amounts of emotional expressiveness. People who are high in extraversion are outgoing and tend to gain energy in social situations. Being around other people helps them feel energized and excited.\n\nPeople who are low in extraversion (or introverted) tend to be more reserved and have less energy to expend in social settings. Social events can feel draining and introverts often require a period of solitude and quiet in order to "recharge."\n'),
          Text(
            'Score Range\n',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('  <10 Extremely Low\n\n  <30 Moderate'),
              Text('<22 Low      \n\n>30 High      ')
            ],
          )
        ],
      ),
    );
  }

  Widget Buildasheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  'Agreeableness',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                'images/pa.png',
                height: 150,
              )
            ],
          ),
          Text(
              'This personality dimension includes attributes such as trust, altruism, kindness, affection, and other prosocial behaviors. People who are high in agreeableness tend to be more cooperative while those low in this trait tend to be more competitive and sometimes even manipulative.\n'),
          Text(
            'Score Range\n',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('  <10 Extremely Low\n\n  <30 Moderate'),
              Text('<26 Low      \n\n>30 High      ')
            ],
          )
        ],
      ),
    );
  }

  Widget Buildnsheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Neuroticism',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'images/pn.png',
                height: 150,
              )
            ],
          ),
          Text(
              'Neuroticism is a trait characterized by sadness, moodiness, and emotional instability. Individuals who are high in this trait tend to experience mood swings, anxiety, irritability, and sadness. Those low in this trait tend to be more stable and emotionally resilient.\n'),
          Text(
            'Score Range\n',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('  <10 Extremely Low\n\n  <30 Moderate'),
              Text('<22 Low      \n\n>30 High      ')
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: bottomscroll,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 20, top: 10, bottom: 10),
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            color: Color(0xFF75CFE7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 20),
                  child: Text(
                    '$name\'s Scorecard(out of 40):',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Openness to Experience (O):$O',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Conscientiousness (C):$C',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Extroversion (E):$E',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Agreeableness (A):$A',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Neuroticism (N):$N',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              '$name\'s Personality:',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            ),
          ),
          Container(
            height: 400,
            child: RadarChart(
              features: ['O', 'C', 'E', 'A', 'N'],
              data: [
                [25, 26, 22, 26, 22],
                [O, C, E, A, N]
              ],
              ticks: [10, 20, 30, 40],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.blue[300],
                  child: Text('$name\'s data'),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.green[300],
                  child: Text('Average data'),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 18),
              child: Column(
                children: <Widget>[
                  O < 25
                      ? Text(
                          'O:  Your Openness to Experience personality trait score is lower than average, This is a trait of seeking new experiences and intellectual pursuits. You do not day dream a lot. You tend to be very down to earth (more of a ‘hear and now’ thinker). Consequently, people like you might tend to enjoy routines, predictability, and structure.\n',
                          style: TextStyle(fontSize: 15),
                        )
                      : Text(
                          'O:  Your Openness to Experience personality trait score is high, this is a trait of seeking new experiences and intellectual pursuits. You may day dream a lot (enjoy thinking about new and different things). Consequently, people like you might be more creative, flexible, curious, and adventurous, whereas you do not tend to enjoy routines, predictability, and structure vey much.\n',
                          style: TextStyle(fontSize: 15),
                        ),
                  C < 26
                      ? Text(
                          'C:  Your Conscientiousness trait is less than average, this is the trait of being honest and hardworking. You don\'t prefer to follow rules and your room might be messy most of the time.\n',
                          style: TextStyle(fontSize: 15),
                        )
                      : Text(
                          'C:  Your Conscientiousness (C) trait is high, this is the personality trait of being honest and hardworking. You tend to follow rules and prefer clean homes. You would never have the intention to cheat others.\n',
                          style: TextStyle(fontSize: 15),
                        ),
                  E < 22
                      ? Text(
                          'E:  Extroversion is the personality trait of seeking fulfillment from sources outside the self or in community. You have a lower than aerage score so, you do not tend to be very social, and would love to work on your projects alone.\n',
                          style: TextStyle(fontSize: 15),
                        )
                      : Text(
                          'E:  Extroversion is the personality trait of seeking fulfillment from sources outside the self or in community. You have a high score so, you tend to be very social.\n',
                          style: TextStyle(fontSize: 15),
                        ),
                  A < 26
                      ? Text(
                          'A:  Agreeableness reflects how much individuals adjust their behavior to suit others. You have low score and you are typically not very polite, you tend to \'tell it like it is.\n',
                          style: TextStyle(fontSize: 15),
                        )
                      : Text(
                          'A:  Agreeableness reflects how much individuals adjust their behavior to suit others. You have High score, so you are typically polite and like people.\n',
                          style: TextStyle(fontSize: 15),
                        ),
                  N < 22
                      ? Text(
                          'N:  Neuroticism is the personality trait of being emotional. You have lower than average score, you do not tend to have high emotional reactions to stress. You do not perceive situations as threatening and don\'t likely experience mood swing. People like you tend to be more emotionally stable and less reactive to stress.\n',
                          style: TextStyle(fontSize: 15),
                        )
                      : Text(
                          'N:  Neuroticism is the personality trait of being emotional. You are in High scorers so you tend to have high emotional reactions to stress. You may perceive situations as threatening and be more likely to feel moody, depressed, angry, anxious, and experience mood swing.\n',
                          style: TextStyle(fontSize: 15),
                        ),
                ],
              )),
          Container(
            padding: EdgeInsets.only(bottom: 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    color: Color(0xFF75CFE7),
                    splashColor: Colors.black,
                    child: Text('O'),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context, builder: Buildosheet);
                    },
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    color: Colors.blue[300],
                    splashColor: Colors.black,
                    child: Text('C'),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context, builder: Buildcsheet);
                    },
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    color: Color(0xFF6EA6DE),
                    splashColor: Colors.black,
                    child: Text('E'),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context, builder: Buildesheet);
                    },
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    color: Colors.purple[200],
                    splashColor: Colors.black,
                    child: Text('A'),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context, builder: Buildasheet);
                    },
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    color: Colors.purple[100],
                    splashColor: Colors.black,
                    child: Text('N'),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context, builder: Buildnsheet);
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 35,
            ),
            child: Text(
              '*Press on trait letter to know more',
              style: TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
      floatingActionButton: RaisedButton.icon(
          color: Colors.black,
          splashColor: Color(0xFF75CFE7),
          elevation: 10,
          onPressed: () {
            if (scrolled == 0)
              setState(() {
                scrolled = 1;
                bottomscroll.jumpTo(bottomscroll.position.maxScrollExtent);
              });
            else
              Navigator.pushNamed(context, 'mainpanel');
          },
          icon: scrolled == 0
              ? Icon(
                  Icons.arrow_downward,
                  color: Color(0xFF75CFE7),
                )
              : Icon(
                  Icons.arrow_back,
                  color: Color(0xFF75CFE7),
                ),
          label: scrolled == 0
              ? Text(
                  'More',
                  style: TextStyle(color: Color(0xFF75CFE7)),
                )
              : Text(
                  'Back',
                  style: TextStyle(color: Color(0xFF75CFE7)),
                )),
    );
  }
}
