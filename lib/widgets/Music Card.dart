import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';

class MusicCard extends StatefulWidget {
  const MusicCard({Key? key}) : super(key: key);

  @override
  State<MusicCard> createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  Color IconColor = Colors.white;
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
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/spidey2.jpeg'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:3.0),
                        child: Text("Singapore Fintech Festival",style: GoogleFonts.poppins(textStyle: FestivalName),),
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: offWhite,),
                          SizedBox(width: 5,),
                          Text("Singapore Expo,Singapore",style: GoogleFonts.poppins(textStyle: LocationName),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
                           children: [
                             CircleAvatar(
                                 backgroundColor: Colors.white,
                                 radius: 12
                             ),
                             SizedBox(width: 5,),
                             Column(
                               children: [
                                 Text("Sponsor",style: GoogleFonts.poppins(textStyle: MainTextColor1),),
                                 Text("Sponsor",style: GoogleFonts.poppins(textStyle: LocationName),),
                               ],
                             )
                           ],
                         ),
                          Row(
                            children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  IconColor = IconRed.withOpacity(1);
                                });
                              }, icon: Icon(Icons.favorite),color: IconColor,)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
