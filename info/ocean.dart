import 'package:flutter/material.dart';

class Aboutocean extends StatefulWidget {
  @override
  _AboutoceanState createState() => _AboutoceanState();
}

class _AboutoceanState extends State<Aboutocean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 80),
              child: Text(
                'In psychological trait theory, the Big Five personality traits, also known as the five-factor model (FFM) and the OCEAN model, is a suggested taxonomy, or grouping, for personality traits,developed from the 1980s onwards. When factor analysis (a statistical technique) is applied to personality survey data, some words used to describe aspects of personality are often applied to the same person. For example, someone described as conscientious is more likely to be described as "always prepared" rather than "messy". This theory is based therefore on semantic associations between words and not on neuropsychological experiments. This theory uses descriptors of common language and suggests five broad dimensions commonly used to describe the human personality and psyche.\n\nThe theory identifies five factors:\n• openness to experience (inventive/curious vs. consistent/cautious)\n• conscientiousness (efficient/organized vs. extravagant/careless)\n• extraversion (outgoing/energetic vs. solitary/reserved)\nagreeableness (friendly/compassionate vs. challenging/callous)\n• neuroticism (sensitive/nervous vs. resilient/confident)',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
