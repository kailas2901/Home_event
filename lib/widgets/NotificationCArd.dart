import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';

class CardNotify extends StatelessWidget {

  const CardNotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (ctx,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: CardColor1.withOpacity(1)
                ),

                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [

                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: IconColorWhite
                            ),
                            child: Icon(Icons.notifications_none_outlined,color:Colors.black,size: 40,),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Booking Recived",style: GoogleFonts.poppins(textStyle: EventPlace),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text("New Booking #1021 Has been Recived",style: GoogleFonts.poppins(color: offWhite),),
                                    ),
                                    Text('7 days ago')
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
          });
  }
}
