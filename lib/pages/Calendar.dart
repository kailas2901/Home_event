import 'package:flutter/material.dart';
import 'package:home_event/pages/TabNavigation.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabNavigation(),
    );
  }
}

