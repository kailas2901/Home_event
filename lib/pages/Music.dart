import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/widgets/Music%20Card.dart';
import 'package:home_event/widgets/NotificationCArd.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF4F0020) ,
          title: Text('Music',style: HeaderStyle,),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios,color: IconColorWhite,),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: lineardecoration
          ),
          child: ListView(
            children: <Widget>[
              MusicCard()
            ],
          ),
        )
    );
  }
}
