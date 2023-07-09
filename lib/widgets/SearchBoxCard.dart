import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/colors/extensions.dart';

class SearchBoxCard extends StatefulWidget {
  const SearchBoxCard({Key? key}) : super(key: key);

  @override
  State<SearchBoxCard> createState() => _SearchBoxCardState();
}

class _SearchBoxCardState extends State<SearchBoxCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (ctx,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CardColor1.withOpacity(1),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            children: [
                              Row(
                                children: [

                                  Container(
                                    width: 100,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(image: AssetImage('assets/imagehori.jpeg'),fit: BoxFit.cover),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("02 February",style: GoogleFonts.poppins(textStyle: DateText),),
                                        Text("Meta Expo Singapore",style: GoogleFonts.poppins(textStyle: EventPlace),),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on,color: Iconcolor,),
                                            SizedBox(width: 2,),
                                            SizedBox(
                                              width: 200,
                                              child: Text("Marina Bay Sands 10 BAyFront Avenue Singapore ",style: GoogleFonts.poppins(color: offWhite),),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )


                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            );
  }
}
