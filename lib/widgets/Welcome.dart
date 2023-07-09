import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/pages/Notifcation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:home_event/Core/gelocator.dart';
import 'package:geocoding/geocoding.dart';

import '../Style/Style.dart';

class Welocme extends StatefulWidget {
  const Welocme({Key? key}) : super(key: key);

  @override
  State<Welocme> createState() => _WelocmeState();
}

class _WelocmeState extends State<Welocme> {
   String location = "Kollam";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 35,
                child: ElevatedButton.icon(
                  onPressed: ()async{
                  Position position = await _determinePosition();
                  getAdressfromLatLng(position);
                  setState(() {

                  });

                }, icon: Icon(Icons.location_on_outlined,color: IconRed.withOpacity(1),),label: Text(
                  '${location}',style: GoogleFonts.poppins(color: TextColorWhite),),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        width: 0.8,
                        color: Colors.white
                    ),
                    backgroundColor: Color(0xFF4F0020),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: CardColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon:new Icon(Icons.notifications_active_outlined),onPressed:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NotificationPage()),
                      );
                    },highlightColor: IconColorWhite,
                    color: IconColorWhite,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Text("Welcome back,Max",style: GoogleFonts.poppins(textStyle: HeaderStyle),
          ),
        ],

      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
  Future<void> getAdressfromLatLng(Position position) async{
    List<Placemark> placemark = await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    location = '${place.locality}';
    print(placemark);
  }
}
