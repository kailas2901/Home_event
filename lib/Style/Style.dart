import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/colors/extensions.dart';

const TextStyle MainTextColor = TextStyle(
    color: Colors.white,
);

const TextStyle MainTextColor1 = TextStyle(
  fontSize: 12,
  color: Colors.white,
);
TextStyle HeaderStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 25,
  letterSpacing: 0.5
);
const TextStyle FestivalName = TextStyle(
    color: Colors.white,
    fontSize: 15,
  fontWeight: FontWeight.w600
);
const TextStyle LocationName = TextStyle(
    color: offWhite,
    fontSize: 10,
    fontWeight: FontWeight.w300
);
const TextStyle EventDate = TextStyle(
    color: offWhite,
    fontSize: 13,
    fontWeight: FontWeight.w400
);
const TextStyle SettingsText = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w400
);
const TextStyle EventPlace = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w500
);
const TextStyle EventPlace1 = TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.w500
);
const TextStyle AboutEvent = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500
);
const TextStyle AboutEventPara = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500
);
const TextStyle AboutEventParaTerms = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w300
);
 TextStyle DateText = TextStyle(
    color: 'C3073F'.toColor(),
    fontSize: 13,
    fontWeight: FontWeight.w500
);
 TextStyle SignUpText = TextStyle(
   fontSize: 20,
   color: Colors.white,
   fontWeight: FontWeight.bold,
 );

LinearGradient lineardecoration = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF4F0020), Color(0xFF050505)],
);

Container LargeBullet = Container(
  width: 8, height: 8, decoration:
BoxDecoration(shape: BoxShape.circle, color: Colors.white),
);
Container SmallBullet = Container(
  width: 5, height: 5, decoration:
BoxDecoration(shape: BoxShape.circle, color: Colors.white),
);