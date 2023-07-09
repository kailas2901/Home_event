import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/pages/Cancelled_Tab.dart';
import 'package:home_event/pages/Completed_Tab.dart';
import 'package:home_event/pages/Upcoming_Tab.dart';

import '../colors/Colors.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({Key? key}) : super(key: key);

  @override
  State<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: lineardecoration
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25.0,
              left: 15.0,
              right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tickets",style: GoogleFonts.poppins(textStyle: HeaderStyle),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), color: CardColor.withOpacity(0.3)),
                    child: TabBar(
                      indicatorSize:TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: 'C3073F'.toColor(),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelColor: TextColorWhite,
                      dividerColor: '#4F0020'.toColor(),
                      unselectedLabelColor: offWhite,
                      tabs: const[
                        Tab(
                          text: "Upcoming",
                        ),
                        Tab(
                          text: "Completed",
                        ),
                        Tab(
                          text: "Cancelled",
                        ),

                      ],
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top:10.0),
                      child: TabBarView(children: [
                        Upcoming_Tab(),
                        CompletedTab(),
                        CancelledTab()

                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
