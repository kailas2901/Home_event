import 'package:home_event/pages/Login.dart';
import 'package:home_event/pages/Music.dart';
import 'package:home_event/pages/Trending%20Events.dart';
import 'package:meta/dart2js.dart';

import 'package:flutter/material.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/pages/Calendar.dart';
import 'package:home_event/pages/Favourates.dart';
import 'package:home_event/pages/Home.dart';
import 'package:home_event/pages/Notifcation.dart';
import 'package:home_event/pages/Profile.dart';
import 'package:home_event/pages/Search.dart';
import 'package:home_event/widgets/BottomNavigation.dart';
import 'package:home_event/widgets/Card_Event_Trending.dart';
import 'package:home_event/widgets/Favourate%20Card.dart';
import 'package:home_event/widgets/LoinPage.dart';
import 'package:home_event/widgets/PopUp%20Page.dart';
import 'package:home_event/widgets/PopUpTerms.dart';
import 'package:home_event/widgets/SearchBoxCard.dart';
import 'package:home_event/widgets/SettingIconName.dart';
import 'package:home_event/pages/TabNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:const BottomNav(),
    );
  }
}

