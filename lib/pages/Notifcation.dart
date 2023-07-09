import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/widgets/NotificationCArd.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF4F0020) ,
        title: Text('Notifications',style: HeaderStyle,),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios,color: IconColorWhite,),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: lineardecoration
        ),
        child: ListView(
          children: <Widget>[
            CardNotify()
          ],
        ),
      )
    );
  }
}
