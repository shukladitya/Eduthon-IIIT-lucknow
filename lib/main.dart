import 'package:flutter/material.dart';
import 'package:melab/COLORtest/COLORinstructions.dart';
import 'package:melab/COLORtest/COLORresult.dart';
import 'package:melab/COLORtest/COLORresulttileexpansion.dart';
import 'package:melab/COLORtest/COLORtestpanel.dart';
import 'package:melab/FirstTime.dart';
import 'package:melab/MBTResult.dart';

import 'file:///C:/Users/Aditya/Music/dotes/lib/MB%20personality%20test/MBTInstructions.dart';
import 'package:melab/MainPanel.dart';
import 'package:melab/OCEANtest/OCEANinstrucions.dart';
import 'package:melab/Results.dart';
import 'file:///C:/Users/Aditya/Music/dotes/lib/MB%20personality%20test/TestPanel.dart';
import 'BioData.dart';
import 'package:melab/OCEANtest/OCEANTestpanel.dart';
import 'OCEANtest/OCEANResult.dart';

void main() => runApp(Dotes());

class Dotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstTime(), routes: {
      'biodata': (context) => BioData(),
      'mainpanel': (context) => MainPanel(),
      'mbtinstruction': (context) => MBTInstruction(),
      'testpanel': (context) => TestPanel(),
      'resultpanel': (context) => Results(),
      'mbtresult': (context) => MBTResult(),
      'oceaninstruction': (context) => OCEANinstruction(),
      'oceantestpanel': (context) => OCEANTestpanel(),
      'oceanresult': (context) => OCEANResult(),
      'colorinstruction': (context) => COLORinstructions(),
      'colortestpanel': (context) => COLORtestpanel(),
      'colorresult': (context) => COLORresult(),
      'colortile': (context) => COLORresulttileexpansion()
    });
  }
}
