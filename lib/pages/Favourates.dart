import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/pages/Calendar.dart';
import 'package:home_event/widgets/Favourate%20Card.dart';
import 'package:home_event/widgets/SearchBar.dart';

class Favourates extends StatelessWidget {
  const Favourates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: lineardecoration
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Bookmarks",style: GoogleFonts.poppins(textStyle: HeaderStyle),),
              ),
              SizedBox(height: 10,),
              FavourateCard(),
            ],
          ),
        ),
      )



      );
  }
}
