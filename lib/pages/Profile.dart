import 'package:flutter/material.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/widgets/SettingIconName.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: lineardecoration
        ),
        child: ListView(
          children: <Widget>[
            SettingsOption()
          ],
        ),
      ),
    );
  }
}
