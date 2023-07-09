import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Colorpress.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';

class Upcoming_Tab extends StatelessWidget {
  const Upcoming_Tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (ctx,index){
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: CardColor1.withOpacity(1),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage('assets/imagever.png'),fit: BoxFit.cover),
                                ),
                                width: 100,
                                height: 100,

                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      child: Text("Singapore Fintech Festival",style: GoogleFonts.poppins(textStyle: EventPlace),),
                                    ),
                                    Text("11 December",style: GoogleFonts.poppins(textStyle: DateText),),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_rounded,color: offWhite,),
                                        SizedBox(
                                            width: 170,
                                            child: Text("Singapore Expo Singapore",style: GoogleFonts.poppins(color: offWhite),))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(
                                  height: 30,
                                  child: ElevatedButton(onPressed: (){}, child: Text("Canel Ticket",style: GoogleFonts.poppins(),),style: Buttonblack)),
                              SizedBox(width: 15,),
                              SizedBox(
                                  height: 30,
                                  width: 130,
                                  child: ElevatedButton(onPressed: (){}, child: Text("View E-Ticket",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12)),),style: Buttonred,))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      );
  }
}
