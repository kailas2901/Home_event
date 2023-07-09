import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/pages/SignUp.dart';
import 'package:home_event/widgets/BottomNavigation.dart';
import 'package:home_event/widgets/SignUpPage.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/rendering.dart';

class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  State<sign_in> createState() => _sign_inState();
}

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

class _sign_inState extends State<sign_in> {
  bool status = false;
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: lineardecoration),
            child: SafeArea(
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/B evet logo with tet.png',
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [

                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sign in',
                                          style: GoogleFonts.poppins(textStyle: SignUpText),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(

                                        decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.3),
                                            borderRadius: BorderRadius.circular(50)),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.call_outlined,
                                                  color: Colors.white,
                                                )),
                                            Text(
                                              '+91',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        )),
                                    SizedBox(width: 15,),
                                    Container(
                                      width: 220,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(50)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20.0),
                                        child: TextField(
                                          style: TextStyle(color: Colors.white),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Mobile number',
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white.withOpacity(0.3)),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Container(

                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        obscureText: passwordVisible,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Password',
                                          suffixIcon: IconButton(
                                            color: Colors.white,
                                            icon: Icon(passwordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            onPressed: () {
                                              setState(
                                                    () {
                                                  passwordVisible = !passwordVisible;
                                                },
                                              );
                                            },
                                          ),
                                          hintStyle: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white.withOpacity(0.3),
                                          ),
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      FlutterSwitch(
                                        width: 50,
                                        height: 25,
                                        valueFontSize: 25.0,
                                        toggleSize: 20,
                                        value: status,
                                        activeColor: Color(0xFFC3073F),
                                        borderRadius: 30.0,
                                        showOnOff: false,
                                        onToggle: (val) {
                                          setState(() {
                                            status = val;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        'Remember me',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),

                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFFC3073F),
                                        padding: EdgeInsets.symmetric(horizontal: 100),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8))),
                                    onPressed: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const BottomNav()),
                                    );},
                                    label: Text('SIGN IN',style: TextStyle(color: Colors.white),),
                                    icon: Icon(Icons.arrow_forward_sharp,color: Colors.white,)),
                              ],
                            ),
                          ),
                    ],
                  ),
                  SizedBox(height: 150,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an account?',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignUp()),
                            );
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFFC3073F)),
                          ))
                    ],
                  )
                ],
              ),
            ),
            ),
    );
  }
}