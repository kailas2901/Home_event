import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Colorpress.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/pages/Music.dart';

import '../colors/Colors.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => const Music()));
                },icon: Icon(Icons.music_note_rounded,size: 20,),
                    label:Text('Music',style: GoogleFonts.poppins(textStyle: MainTextColor),),style: Buttonpressred,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.linked_camera_outlined,size: 20,),
                  label:Text('Arts&Craft',style: GoogleFonts.poppins(textStyle: MainTextColor),) ,style: Buttonpressred),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.play_circle_filled_rounded,size: 20,),
                  label:Text('Comedy Show',style: GoogleFonts.poppins(textStyle: MainTextColor),) ,style: Buttonpressred),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.drive_eta),
                  label:Text('Vehicle',style: GoogleFonts.poppins(textStyle: MainTextColor),) ,style: Buttonpressred),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.safety_check),
                  label:Text('Welcome',style:GoogleFonts.poppins(textStyle: MainTextColor),) ,style: Buttonpressred,),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.safety_check),
                  label:Text('Welcome',style: GoogleFonts.poppins(textStyle: MainTextColor),) ,style: Buttonpressred,),
              ),

            ],
          )


        ],
      ),
    );
  }
}
