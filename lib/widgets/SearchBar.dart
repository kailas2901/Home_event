import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/Colors.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  final _searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row (
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: _searchcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: CardColor1.withOpacity(1),
                  contentPadding: EdgeInsets.symmetric(vertical:8.0),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.poppins(color: TextColorWhite),
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search,color: IconColorWhite,),
                    onPressed: (){},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}