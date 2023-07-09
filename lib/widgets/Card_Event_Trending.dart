import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/pages/Trending%20Events.dart';
import 'package:home_event/widgets/PopUp%20Page.dart';
import 'package:home_event/widgets/PopUpTerms.dart';

class CardEvent extends StatelessWidget {
  const CardEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trending Events",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: TextColorWhite),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => const Trending()));
                    }, child: Text("See All >",style:GoogleFonts.poppins(color: TextColorWhite),))
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
                          image:DecorationImage( image: AssetImage('assets/imagever.png'),fit: BoxFit.cover),
                        ),

                        width: 190,
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(width: 40, child: Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Text('12 May',style: GoogleFonts.poppins(color: TextColorWhite),),
                                  ),decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white24,
                                  ),),
                                  Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(19),
                                          color: Colors.white24
                                      ),
                                      child: Icon(Icons.favorite,color: IconColorWhite,))
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
                                      child: Text("Singapore finTech festival",style: GoogleFonts.poppins(textStyle: MainTextColor),)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(

                                        top: 14
                                    ),
                                    child: ElevatedButton(onPressed: (){showBottomSheet1(context);}, child: Text('Join',),
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
                                    SizedBox(width: 10,),
                                    Text("Sponsor",style: GoogleFonts.poppins(textStyle: MainTextColor),)
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
Future<void> showBottomSheet1(BuildContext ctx)async{
  showModalBottomSheet(
    context: ctx,
    builder: (ctx1){
      return Container(
        height: 1600,
        decoration: BoxDecoration(
          gradient: lineardecoration,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              )
        ),
        child: PopUpPage(),
      );
    },
  );

}