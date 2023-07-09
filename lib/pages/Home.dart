import 'package:flutter/material.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/widgets/Card_Event_Trending.dart';
import 'package:home_event/widgets/List.dart';
import 'package:home_event/widgets/SearchBar.dart';
import 'package:home_event/widgets/Upcoming_card.dart';
import 'package:home_event/widgets/Welcome.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 1,
      //   leading:const Icon(Icons.arrow_back,color: Colors.white),
      //   title:const Text("Event",style: TextStyle(color: Colors.white),),
      //   centerTitle: true,
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: lineardecoration,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              child:  Padding(
                padding: EdgeInsets.only(
                    top:15.0,
                left: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.0
                      ),
                      child: Welocme(),
                    ),
                    SizedBox(height: 5,),
                    search(),
                    SizedBox(height: 10,),
                    HorizontalList(),
                    CardEvent(),
                    UpcomingCard()
                  ],
                ),
              ),
            )
          ],


      ),
      )
    );
  }
}
