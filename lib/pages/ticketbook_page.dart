import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_event/widgets/PopUpTerms.dart';

import '../Style/Style.dart';

class ticket_seat extends StatefulWidget {
  const ticket_seat({Key? key}) : super(key: key);

  @override
  State<ticket_seat> createState() => _ticket_seatState();
}

class _ticket_seatState extends State<ticket_seat> {
  int _count = 1;
  int _tax = 10;
  int _value = 200;
  void _incrementCount() {
    setState(() {
      _count++;
      if(_count == 0){
        _value = 0;
        _tax = 0;
      }else{
        _value = _value+200;
        _tax = _tax+10;
      }

    });
  }


  void _decrementCount() {
    setState(() {
      _count = max(_count-1, 0);
      if(_count == 0){
        _value = 0;
        _tax = 0;
      }else{
        _value = _value-200;
        _tax = _tax-10;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Tickets',
          ),
          backgroundColor: Color(0xFF4F0020),
        ),
        body: Container(
            width: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF4F0020), Color(0xFF050505)],
                )),
            child: SafeArea(
              child: ListView(
                children: <Widget>[
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
                            child: Text(
                              'Ticket Type',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                            child: Text('GENERAL'),
                            style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                side: BorderSide(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                primary: Colors.white,
                                textStyle: TextStyle(
                                  fontSize: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)))
                            ),
                            onPressed: () {},
                          ),
                          OutlinedButton(
                            child: Text('VIP'),
                            style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                side: BorderSide(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                primary: Colors.white,
                                textStyle: TextStyle(
                                  fontSize: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
                            child: Text(
                              'Seat',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Container(
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          backgroundColor:
                                          Colors.white.withOpacity(0.3),
                                        ),
                                        onPressed: _decrementCount,
                                        child: Icon(
                                          Icons.remove,
                                          color: Color(0xFFC3073F),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "${_count}",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          backgroundColor:
                                          Colors.white.withOpacity(0.3),
                                        ),
                                        onPressed: _incrementCount,
                                        child: Icon(
                                          Icons.add,
                                          color: Color(0xFFC3073F),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                            child: Text(
                              'Coupons',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Container(
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          backgroundColor:
                                          Colors.white.withOpacity(0.3),
                                        ),
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.local_offer_outlined,
                                          color: Color(0xFFC3073F),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Apply  Coupons",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      child: IconButton(
                                        icon: new Icon(Icons.arrow_forward_ios),
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Sub Total: ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            "${_value}",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Tax: ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Text(
                            "${_tax}",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Total: ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            '${_value +_tax}',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFC3073F),
                              padding: EdgeInsets.symmetric(horizontal: 100),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                            showBottomSheet1(context);
                          },
                          label: Text('CONTINUE'),
                          icon: Icon(Icons.arrow_forward_sharp)),
                    ],
                  )
                ],
              ),
            ),
            ),
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
        child: PopUpTerms(),
      );
    },
  );

}