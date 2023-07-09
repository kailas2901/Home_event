import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/widgets/SearchBar.dart';
import 'package:home_event/widgets/SearchBoxCard.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: lineardecoration
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 8),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Search",style: GoogleFonts.poppins(textStyle: HeaderStyle),),
                    )
                ),
                SizedBox(height: 5,),
                search(),
                SizedBox(height: 10,),
                SearchBoxCard()

              ],
            ),
          ),
        ),
      );
  }
}
