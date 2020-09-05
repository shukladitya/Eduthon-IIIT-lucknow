import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:melab/Info.dart';
import 'package:melab/Results.dart';
import 'package:melab/Stress/Stress.dart';
import 'package:melab/Tests.dart';

class MainPanel extends StatefulWidget {
  @override
  _MainPanelState createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  int currentTab;
  List<Widget> screens = [Tests(), Stress(), Results(), Info()];
  Widget currentScreen = Tests();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
          body: currentScreen,
          bottomNavigationBar: CircleBottomNavigation(
            blurShadowRadius: 20,
            shadowAllowance: 20,
            circleColor: Color(0xFF75CFE7),
            inactiveIconColor: Color(0xFF75CFE7),
            initialSelection: 0,
            tabs: [
              TabData(
                  icon: Icons.check_circle_outline,
                  title: 'Tests',
                  iconSize: 35),
              TabData(icon: Icons.face, title: 'Depression', iconSize: 35),
              TabData(
                  icon: Icons.content_paste, title: 'Results', iconSize: 35),
              TabData(
                  icon: Icons.lightbulb_outline,
                  title: 'Explore',
                  iconSize: 35),
            ],
            onTabChangedListener: (i) {
              setState(() {
                currentTab = i;
                currentScreen = screens[i];
              });
            },
          )),
    );
  }
}
