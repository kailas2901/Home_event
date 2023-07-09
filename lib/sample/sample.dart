import 'package:flutter/material.dart';

class sample extends StatefulWidget {
  const sample({Key? key}) : super(key: key);

  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Text('General')),
                ElevatedButton(onPressed: (){}, child: Text('VIP')),
              ],
            ),

          ],
        ),
      ),

    );
  }
}
