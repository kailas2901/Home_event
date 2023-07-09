import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/pages/UpcomingEvents.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Events",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => const Upcoming()));
                }, child: Text("See All >",style: GoogleFonts.poppins(color: TextColorWhite),))
              ],
            ),
          ),
        ),
        Container(
          height: 280,
          child: ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (ctx,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage('assets/imagehori.jpeg'),fit: BoxFit.cover),
                    ),

                    width: 190,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:25,
                                child: Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Text('12 May',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,color: IconRed.withOpacity(1) ),),
                              ),decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: CardColor.withOpacity(0.5),
                              ),),
                              Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(19),
                                    color: CardColor.withOpacity(0.5),
                                  ),
                                  child: Icon(Icons.favorite_border,color: IconRed.withOpacity(1),))
                            ],
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               SizedBox(
                                  width: 80,
                                  child: Text("Singapore finTech festival",style: GoogleFonts.poppins(color: TextColorWhite),)
                              ),
                              Padding(
                                padding: const EdgeInsets.only(

                                    top: 14
                                ),
                                child: ElevatedButton(onPressed: (){}, child: Text('Join',style: GoogleFonts.poppins(),),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent,
                                      foregroundColor: TextColorWhite,
                                      minimumSize: Size(10, 30),
                                      elevation: 10
                                  ),),
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                    child: Icon(Icons.person)),
                                SizedBox(width: 5,),
                                Text("Sponsor",style: GoogleFonts.poppins(color: TextColorWhite),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],

    );
  }
}
