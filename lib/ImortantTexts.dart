int e = 0, i = 0, s = 0, n = 0, t = 0, f = 0, j = 0, p = 0;
List<String> persontype = [];
int persontypeno() {
  if (persontype[0] == 'I' &&
      persontype[1] == 'N' &&
      persontype[2] == 'F' &&
      persontype[3] == 'P') return 1;
  if (persontype[0] == 'I' &&
      persontype[1] == 'N' &&
      persontype[2] == 'F' &&
      persontype[3] == 'J') return 2;
  if (persontype[0] == 'E' &&
      persontype[1] == 'N' &&
      persontype[2] == 'F' &&
      persontype[3] == 'J') return 3;
  if (persontype[0] == 'E' &&
      persontype[1] == 'N' &&
      persontype[2] == 'F' &&
      persontype[3] == 'P') return 4;
  if (persontype[0] == 'I' &&
      persontype[1] == 'N' &&
      persontype[2] == 'T' &&
      persontype[3] == 'J') return 5;
  if (persontype[0] == 'E' &&
      persontype[1] == 'N' &&
      persontype[2] == 'T' &&
      persontype[3] == 'J') return 6;
  if (persontype[0] == 'E' &&
      persontype[1] == 'N' &&
      persontype[2] == 'T' &&
      persontype[3] == 'P') return 7;
  if (persontype[0] == 'I' &&
      persontype[1] == 'N' &&
      persontype[2] == 'T' &&
      persontype[3] == 'P') return 8;
  if (persontype[0] == 'E' &&
      persontype[1] == 'S' &&
      persontype[2] == 'F' &&
      persontype[3] == 'J') return 9;
  if (persontype[0] == 'E' &&
      persontype[1] == 'S' &&
      persontype[2] == 'F' &&
      persontype[3] == 'P') return 10;
  if (persontype[0] == 'I' &&
      persontype[1] == 'S' &&
      persontype[2] == 'F' &&
      persontype[3] == 'J') return 11;
  if (persontype[0] == 'I' &&
      persontype[1] == 'S' &&
      persontype[2] == 'F' &&
      persontype[3] == 'P') return 12;
  if (persontype[0] == 'E' &&
      persontype[1] == 'S' &&
      persontype[2] == 'T' &&
      persontype[3] == 'J') return 13;
  if (persontype[0] == 'E' &&
      persontype[1] == 'S' &&
      persontype[2] == 'T' &&
      persontype[3] == 'P') return 14;
  if (persontype[0] == 'I' &&
      persontype[1] == 'S' &&
      persontype[2] == 'T' &&
      persontype[3] == 'J') return 15;
  if (persontype[0] == 'I' &&
      persontype[1] == 'S' &&
      persontype[2] == 'T' &&
      persontype[3] == 'P') return 16;
}

List<String> disc = [
  'Welcome to Dotes. This app is built to help you and you\'re loved once to see the real, deeper self. So that one can make a better decision in career, life, and life partner.',
  'The creaters of this app strongly beleave that "there are no great people in this world only great challenges which ordinary people rise to meet", and a piece of test can not defy it.',
  'The psychological self-tests provided in the app are intended for educational purposes only and should not be understood to constitute any type of diagnosis or healthcare recommendation.'
];

List<List> mbtins = [
  [
    '20 questions in 5 minutes questionnaire designed to help see who you are.',
    'There are no “right“ or “wrong” answers to the questions. Your answers will help to show how you like to look at things and go about deciding them.',
    'Knowing your own preferences can help you understand what your special strenghts are, what kind of work you might enjoy and be successful doing.'
  ],
  [
    'Choose the answer that you think most accurately describes you Even if you agree with both answers.',
    'Answer as you really are, not you want to be. Having strong interests should not be used to cloud the results.',
    'The original ideas of the Myers-Briggs Type Indicator (MBTI) were created by Carl Gustav Jung, If you want to know more about the test head over to explore section.'
  ],
];
List mbquestionbank = [
  'When you go somewhere for the day, would you rather',
  'If you were a teacher, would you rather teach',
  'Are you usually a',
  'Do you more often let',
  'In doing something that many other people do, would you rather',
  'Among your Friends Are you',
  'Does the idea of making a complete list of what to be done',
  'When you have a special job to do, do you like to',
  'Do you tend to',
  'Do you admire more the people who are',
  'Do you prefer to',
  'Do you usually get along better with',
  'When you are with the group of people, you would immediatly',
  'Is it a higher compliment to be called',
  'In reading for pleasure,do you',
  'Do you',
  'Does following a schedule',
  'When it is told do a certain things at a certain time, you feel',
  'Are you more successful',
  'Would you rather be considered'
];

List<List> mboptionbank = [
  ['Plan what to do and when or', 'Just go!!'],
  ['Fact-based courses or', 'Couses involving new opinions'],
  ['Good mixer with groups of people or', 'Rather Quiet and reserved'],
  ['Your heart rule your head or', 'Your Head rule your heart'],
  ['Invent a way of your own, or', 'Do it the accepted way'],
  ['Full of news about everybody or', 'Last to hear what is going on'],
  ['Help you or', 'stresses/depresses you'],
  [
    'Organize it carefully before you start or',
    'Find out what is necessary as you go along'
  ],
  [
    'Broad friendships with many different people or',
    'Deep friendship with very few'
  ],
  [
    'Normal acting to never make themselves the centre of attention or',
    'Too orignal and indivigual to care wether they are center of attention or not'
  ],
  [
    'Arrange picnics,parties etc, well in advance or',
    'Be free to do whatever to looks like fun when time comes'
  ],
  ['Realistic people or', 'Imaginary people'],
  ['Join in the talk of the group or', 'Stand back and listen first'],
  ['A person of real feelings or', 'A consistently reasonable person'],
  [
    'Enjoy odd or orignal ways of saying things or',
    'Like writers to say exactly what they mean'
  ],
  [
    'Talk easily to almost anyone for as long as you have to or',
    'Find a lot to say only to certain people or certain conditions'
  ],
  ['Appeal to you or', 'Cramp you?'],
  [
    'Nice to be able to plan accordingly or',
    'A little unplesent to be tied down'
  ],
  [
    'At following a carefully worked out plan',
    'At dealing with the unexpected and seeing quickly what should be done'
  ],
  ['A practicle person or', 'An out of the box thinking person']
];

////////mbpt score calculator

mbscorecalculator(question, option) {
  List<List> options = [
    [
      ['j', 2],
      ['p', 2]
    ],
    [
      ['s', 2],
      ['n', 2]
    ],
    [
      ['e', 2],
      ['i', 2]
    ],
    [
      ['f', 1],
      ['t', 2]
    ],
    [
      ['n', 1],
      ['s', 1]
    ],
    [
      ['e', 2],
      ['i', 1]
    ],
    [
      ['j', 1],
      ['p', 1]
    ],
    [
      ['j', 1],
      ['p', 2]
    ],
    [
      ['e', 2],
      ['i', 1]
    ],
    [
      ['s', 1],
      ['n', 2]
    ],
    [
      ['j', 2],
      ['p', 1]
    ],
    [
      ['s', 1],
      ['n', 2]
    ],
    [
      ['e', 1],
      ['i', 2]
    ],
    [
      ['f', 1],
      ['t', 2]
    ],
    [
      ['n', 0],
      ['s', 1]
    ],
    [
      ['e', 2],
      ['i', 2]
    ],
    [
      ['j', 2],
      ['p', 2]
    ],
    [
      ['j', 1],
      ['p', 1]
    ],
    [
      ['j', 1],
      ['p', 1]
    ],
    [
      ['s', 2],
      ['n', 2]
    ]
  ];
  if (options[question][option][0] == 'e') e = e + options[question][option][1];
  if (options[question][option][0] == 'i') i = i + options[question][option][1];
  if (options[question][option][0] == 's') s = s + options[question][option][1];
  if (options[question][option][0] == 'n') n = n + options[question][option][1];
  if (options[question][option][0] == 't') t = t + options[question][option][1];
  if (options[question][option][0] == 'f') f = f + options[question][option][1];
  if (options[question][option][0] == 'j') j = j + options[question][option][1];
  if (options[question][option][0] == 'p') p = p + options[question][option][1];
}

Calculatetype() {
  if (e > i)
    persontype.add('E');
  else if (e < i)
    persontype.add('I');
  else
    persontype.add('I');

  if (s > n)
    persontype.add('S');
  else if (e < i)
    persontype.add('N');
  else
    persontype.add('N');

  if (t > f)
    persontype.add('T');
  else if (t < f)
    persontype.add('F');
  else
    persontype.add('F');

  if (j > p)
    persontype.add('J');
  else if (j < p)
    persontype.add('P');
  else
    persontype.add('P');
  print(e);
  print(i);
  print(s);
  print(n);
  print(t);
  print(f);
  print(j);
  print(p);
  print(persontypeno());
  print(persontype);
}

String persontitle() {
  if (persontypeno() == 1) return 'INFP-"The Healer"';
  if (persontypeno() == 2) return 'INFJ-"The Counselor"';
  if (persontypeno() == 3) return 'ENFJ-"The Teacher"';
  if (persontypeno() == 4) return 'ENFP-"The Champion"';
  if (persontypeno() == 5) return 'INTJ-"The Mastermind"';
  if (persontypeno() == 6) return 'ENTJ-"The Commander"';
  if (persontypeno() == 7) return 'ENTP-"The Visionary"';
  if (persontypeno() == 8) return 'INTP-"The Architect"';
  if (persontypeno() == 9) return 'ISFJ-"The Provider"';
  if (persontypeno() == 10) return 'ESFP-"The Performer"';
  if (persontypeno() == 11) return 'ISFJ-"The Protector"';
  if (persontypeno() == 12) return 'ISFP-"The Composer"';
  if (persontypeno() == 13) return 'ESTJ-"TheSupervisor"';
  if (persontypeno() == 14) return 'ESTP-"The Dynamo"';
  if (persontypeno() == 15) return 'ISTJ-"The Inspector"';
  if (persontypeno() == 16) return 'ISTP-"The Craftsman"';
}

String persontitleexpansion() {
  if (persontypeno() == 1) return 'Introverted,Intuitive,Feeling,Perceiving';
  if (persontypeno() == 2) return 'Introverted,Intuitive,Feeling,Judging';
  if (persontypeno() == 3) return 'Extraverted,Intuitive,Feeling,Judging';
  if (persontypeno() == 4) return 'Extraverted,Intuitive,Feeling,Perceiving';
  if (persontypeno() == 5) return 'Introverted,Intuitive,Thinking,Judging';
  if (persontypeno() == 6) return 'Extraverted,Intuitive,Thinking,Judging';
  if (persontypeno() == 7) return 'Extraverted,Intuitive,Thinking,Perceiving';
  if (persontypeno() == 8) return 'Introverted,Intuitive,Thinking,Perceiving';
  if (persontypeno() == 9) return 'Extraverted,Sensing,Feeling,Judging';
  if (persontypeno() == 10) return 'Extraverted,Sensing,Feeling,Perceiving';
  if (persontypeno() == 11) return 'Introverted,Sensing,Feeling,Judging';
  if (persontypeno() == 12) return 'Introverted,Sensing,Feeling,Perceiving';
  if (persontypeno() == 13) return 'Extraverted,Sensing,Thinking,Judging';
  if (persontypeno() == 14) return 'Extraverted,Sensing,Thinking,Perceiving';
  if (persontypeno() == 15) return 'Introverted,Sensing,Thinking,Judging';
  if (persontypeno() == 16) return 'Introverted,Sensing,Thinking,Perceiving';
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
///////////////////////////////////////////////
////////////////////////////
///////////////
/////////
/////////OCEAN TEST RELATED FUNCTION
List optionselected = [];
List oceanins = [
  'This test contains 50 questions, 10 seconds will be given for each question.\nChoose the most appropriate response according to you from Agree to Disagree for each question.',
  'The big five Personality test also called OCEAN test measures Extroversion Agreeableness,Conscientiousness,Neuroticism,Openness to Experience and Can be helpful in identifying leisure activities that align with personality, identifying personality types that might be influencing behavior, & monitoring changes in personality type.'
];

List<String> oceanquestions = [
  'I Am the life of the party',
  'I Feel little concern for others',
  'I Am always prepared',
  'I Get stressed out easily',
  'I Have a rich vocabulary',
  'I Don\'t talk a lot',
  'I Am interested in people',
  'I Leave my belongings around',
  'I Am relaxed most of the time',
  'I Have difficulty understanding abstract ideas',
  'I Feel comfortable around people',
  'I Insult people',
  'I Pay attention to details',
  'I Worry about things',
  'I Have a vivid imagination',
  'I Keep in the background',
  'I Sympathize with others\' feelings',
  'I Make a mess of things',
  'I Seldom feel blue',
  'I Am not interested in abstract ideas',
  'I Start conversations',
  'I Am not interested in other people\'s problems',
  'I Get chores done right away',
  'I Am easily disturbed',
  'I Have excellent ideas',
  'I Have little to say',
  'I Have a soft heart',
  'I Often forget to put things back in their proper place',
  'I Get upset easily',
  'I Do not have a good imagination',
  'I Talk to a lot of different people at parties',
  'I Am not really interested in others',
  'I Like order',
  'I Change my mood a lot',
  'I Am quick to understand things',
  'I Don\'t like to draw attention to myself',
  'I Take time out for others',
  'I Shirk my duties',
  'I Have frequent mood swings',
  'I Use difficult words',
  'I Don\'t mind being the center of attention',
  'I Feel others\' emotions',
  'I Follow a schedule',
  'I Get irritated easily',
  'I Spend time reflecting on things',
  'I Am quiet around strangers',
  'I Make people feel at ease',
  'I Am exacting in my work',
  'I Often feel blue',
  'I Am full of ideas',
];
/////ocean score calculation
int E = 0, A = 0, C = 0, N = 0, O = 0;
oceanscorecalculator() {
  E = 20 +
      optionselected[0] -
      optionselected[5] +
      optionselected[10] -
      optionselected[15] +
      optionselected[20] -
      optionselected[25] +
      optionselected[30] -
      optionselected[35] +
      optionselected[40] -
      optionselected[45];
  A = 14 -
      optionselected[1] +
      optionselected[6] -
      optionselected[11] +
      optionselected[16] -
      optionselected[21] +
      optionselected[26] -
      optionselected[31] +
      optionselected[36] +
      optionselected[41] +
      optionselected[46];
  C = 14 +
      optionselected[2] -
      optionselected[7] +
      optionselected[12] -
      optionselected[17] +
      optionselected[22] -
      optionselected[27] +
      optionselected[32] -
      optionselected[37] +
      optionselected[42] +
      optionselected[47];
  N = 38 -
      optionselected[3] +
      optionselected[8] -
      optionselected[13] +
      optionselected[18] -
      optionselected[23] -
      optionselected[28] -
      optionselected[33] -
      optionselected[38] -
      optionselected[43] -
      optionselected[48];
  O = 8 +
      optionselected[4] -
      optionselected[9] +
      optionselected[14] -
      optionselected[19] +
      optionselected[24] -
      optionselected[29] +
      optionselected[34] +
      optionselected[39] +
      optionselected[44] +
      optionselected[49];
}
//////////////////////////////////////////////
//////////////////////////////
//////////////////////
///////////////
//////
//////
///
///
////////////////////////////////COLOR Test

List colorselcted = [];
String coloropenion(String color) {
  if (color == 'blue')
    return '► Communication:  One-to-one verbal communication and self expression.\n\n► Peace and calm:  Calm and peace within, particularly the deeper shades.\n\n► Honesty:  Truth.\n\n► Spirituality:  Devotion and religious study.\n\n► Wisdom:  Wisdom of the intellect.';
  if (color == 'green')
    return '► Harmony and balance:  Balancer of our mental, emotional and physical energies.\n\n► Healing:  Centre of the body.\n\n► Growth:  Still growing.\n\n► Hope:  Things to come.';
  if (color == 'yellow')
    return '► Mind and intellect:  Active left or analytical brain.\n\n► Happiness and fun:  Uplifting to the spirits, create enthusiasm for life and can awaken greater confidence and optimism.\n\n► Communication of New Ideas:  Expression and integration of new ideas and thoughts.';
  if (color == 'red')
    return '► Energy:  boost physical energy levels, increased heart rate and blood pressure and the release of adrenalin.\n\n► Action:  Fast moving and promotes a need for action and movement.\n\n► Desire:  Physical desire in all its forms- sexual, appetite, cravings.\n\n► Passion:  Passionate belief in an issue or undertaking, including passionate love or passionate hate. Anger is negative passion.';
  if (color == 'purple')
    return '► Inspiration:  Original and sound ideas\n\n► Imagination:  creativity with intellect, stimulating to dream activity.\n\n► Individuality:  Unconventional, individual and original. Hates to copy anyone else and likes to do its own thing.\n\n► Transcendence:Assists during prayer and meditation, helping to get in touch with deeper subconscious thoughts.';
  if (color == 'gray')
    return '► Neutrality:  Impartial and dispassionate, doesn\'t take sides.\n\n► Compromise:  Takes the middle ground, neither one way nor the other.\n\n► Control:  Reserved, quiet and conservative. Has a steadying effect on other ';
  if (color == 'brown')
    return '► Stability:  Reassuring and comforting, earthy and contained.\n\n► Structure:  Encourages orderliness and organization.\n\n► Security:   Safe and protective - a refuge from the chaos of the outside world and a sense of belonging.\n\n► Natural and wholesome:  Related to the earth, nutrition, health and goodness.';
  if (color == 'black')
    return '► Mystery:  The unknown. Secretive, keeping a lot buried inside, unwilling to show its real feelings.\n\n► Power and Control:  Power and control of the self and others. It creates fear and intimidation.\n\n► Intimidation:  Can be unfriendly and unapproachable because of the power it exudes.';
}

String pagepara(int pageno) {
  if (pageno == 1)
    return 'The keywords and explanations shows your personal brand. It shows the essential method of the person, the means which he adopts to achieve his objective.';
  if (pageno == 2)
    return 'This pages\' keywords shows an important subject, commonly representing what the person really is, even when he/she are not aware of it.';
  if (pageno == 3)
    return 'This page shows the “actual state of affairs”, the situation in which one actually feels himself to be, or the manner in which his existing circumstances require him to act.';
  if (pageno == 4)
    return 'Being the \'indifference\' choices, these keywords show that their characteristics are not being rejected, but simply set aside and not currently in use; they could be brought into use at any time if need to be.';
  if (pageno == 5)
    return 'This page represent a “turning away from”. These are the keywords that are most disliked and "represent a need which is suppressed out of necessity“.';
}
