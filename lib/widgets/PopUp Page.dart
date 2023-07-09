import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Colorpress.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/pages/ticketbook_page.dart';

class PopUpPage extends StatefulWidget {
  const PopUpPage({Key? key}) : super(key: key);

  @override
  State<PopUpPage> createState() => _PopUpPageState();
}

class _PopUpPageState extends State<PopUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
        child:  Container(
          height: 30.0,
          child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Buy Tickets \$100 ',style: GoogleFonts.poppins(),),
                const SizedBox(width: 35.0),
                Icon(Icons.arrow_forward),
              ]),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ticket_seat()));
        },
        style:ElevatedButton.styleFrom(
      foregroundColor:  Colors.white,
        backgroundColor: 'C3073F'.toColor(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
    )
    ,
      ),
        body: Container(
          decoration: BoxDecoration(
            gradient: lineardecoration,
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),

          )
          ),
          child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 90,
                            height: 7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/spidey2.jpeg'),fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              color: PopColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("1161+going",style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),),
                                SizedBox(
                                    width: 90,
                                    height: 20,
                                    child: ElevatedButton(onPressed: (){}, child: Text("Invite",style: GoogleFonts.poppins(),),style: Buttonred,))

                              ],
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color:  PopColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.favorite_border,color: textRed,),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          width: 250,
                          child: Text('Singapore FinTech Festival',style: GoogleFonts.poppins(textStyle: EventPlace1),),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: PopColor.withOpacity(0.5)
                            ),
                            child: Icon(Icons.calendar_month,color: textRed,size: 30,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("11 DECEMBER 2025",style: GoogleFonts.poppins(textStyle: EventPlace),),
                                Text("Thursday 10:11 to 8:08",style: GoogleFonts.poppins(textStyle: EventDate),)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: PopColor.withOpacity(0.5)
                            ),
                            child: Icon(Icons.location_on_rounded,color: textRed,size: 30,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Singapore",style: GoogleFonts.poppins(textStyle: EventPlace),),
                                Text("Singapore Expo,Singapore",style: GoogleFonts.poppins(textStyle: EventDate),)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                         CircleAvatar(backgroundColor: Colors.white,radius: 27,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Singapore",style: GoogleFonts.poppins(
                                  textStyle: EventPlace
                                ),),
                                Text("Singapore Expo,Singapore",style: GoogleFonts.poppins(textStyle: EventDate),)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("About Event", style: GoogleFonts.poppins(textStyle: AboutEvent),),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'If you’re not sure where to start, use Constant Contact’s'
                              ' event management tools to ensure your event runs smoothly '
                              'from beginning to end. This marketing tool can help with '
                              'everything from keeping track of registrations to processing customer payments, so you can focus on your business and '
                              'hosting your greatest event yet.',style: GoogleFonts.poppins(textStyle: AboutEventPara),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
        ),
    );
  }
}
