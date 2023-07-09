import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/Colors.dart';

class SettingsOption extends StatelessWidget {
  const SettingsOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text("Settings",style: GoogleFonts.poppins(textStyle: HeaderStyle),),
              SizedBox(height: 18,),
              Text("Account Settings",style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 15,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: CardColor1.withOpacity(1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person_outline,color: TextColorWhite,),
                          SizedBox(width: 10,),
                          Text("Profile",style: GoogleFonts.poppins(textStyle: SettingsText)),
                        ],
                      ),
                      Icon(Icons.navigate_next_sharp,color: TextColorWhite,),
                    ],
                  ),
                ),
              ), SizedBox(height: 10,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: CardColor1.withOpacity(1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month,color: TextColorWhite,),
                          SizedBox(width: 10,),
                          Text("My Booking",style: GoogleFonts.poppins(textStyle: SettingsText),),
                        ],
                      ),
                      Icon(Icons.navigate_next_sharp,color: TextColorWhite,),
                    ],
                  ),
                ),
              ), SizedBox(height: 10,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: CardColor1.withOpacity(1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.wallet,color: TextColorWhite,),
                          SizedBox(width: 10,),
                          Text("Wallet",style: GoogleFonts.poppins(textStyle: SettingsText),),
                        ],
                      ),
                      Icon(Icons.navigate_next_sharp,color: TextColorWhite,),
                    ],
                  ),
                ),
              )

              // ),),
              // Material(
              //   color: CardColor,
              //   child: ListTile(
              //     leading: Icon(Icons.person_outline_sharp),
              //     trailing: Icon(Icons.navigate_next),
              //     title: Text("Profile"),
              //   ),
              // )
            ],
          ),
        ),
    );
  }
}
