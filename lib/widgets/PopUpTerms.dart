import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_event/Style/Colorpress.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/widgets/payment_Sheet.dart';

import '../Style/Style.dart';
import '../colors/Colors.dart';

class PopUpTerms extends StatefulWidget {
   const PopUpTerms({Key? key}) : super(key: key);

  @override
  State<PopUpTerms> createState() => _PopUpTermsState();
}

class _PopUpTermsState extends State<PopUpTerms> {
  bool rememberMe = false;
  bool showErrorMessage = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
        child:  Container(
          height: 30.0,
          child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Continue',style: GoogleFonts.poppins(),),
                const SizedBox(width: 35.0),
                Icon(Icons.arrow_forward),
              ]),
        ),
        onPressed: () {
          if(_formKey.currentState!.validate()){
            // do your success operation here!
            // checking for the rememberValue
            // and setting the message bool data
            if(rememberMe != true)
            setState(() => showErrorMessage = true);
          else
            // setState(() => showErrorMessage = false);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BottomSheetWithRadioButton()));

          }
        },
        style:ElevatedButton.styleFrom(
            foregroundColor:  Colors.white,
            backgroundColor: 'C3073F'.toColor(),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
        )
        ,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: lineardecoration,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),

            )
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 90,
                        height: 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: Text(
                    // ),
                     child: Column(
                       children: [
                         Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  LargeBullet,
                                  SizedBox(width: 8,),
                                  Text("Terms And Conditions",style: AboutEvent,)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SmallBullet,
                                        SizedBox(width: 8,),
                                        Text("Age Limit 16+",style: AboutEventParaTerms,)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0),
                                          child: SmallBullet,
                                        ),
                                        SizedBox(width: 8,),
                                        SizedBox(
                                          width: 350,
                                          child: Text("Internet handling fee per ticket may be levie."
                                              "Please check your total amount before payment",style: AboutEventParaTerms,),
                                        )
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0),
                                          child: SmallBullet,
                                        ),
                                        SizedBox(width: 8,),
                                        SizedBox(
                                          width: 350,
                                          child: Text("Internet handling fee per ticket may be levie."
                                              "Please check your total amount before payment",style: AboutEventParaTerms,),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  LargeBullet,
                                  SizedBox(width: 8,),
                                  Text("Covid Safety GuideLines",style: AboutEvent,)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SmallBullet,
                                        SizedBox(width: 8,),
                                        Text("Age Limit 16+",style: AboutEventParaTerms,)
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0),
                                          child: SmallBullet,
                                        ),
                                        SizedBox(width: 8,),
                                        SizedBox(
                                          width: 350,
                                          child: Text("Internet handling fee per ticket may be levie."
                                              "Please check your total amount before payment",style: AboutEventParaTerms,),
                                        )
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:8.0),
                                          child: SmallBullet,
                                        ),
                                        SizedBox(width: 8,),
                                        SizedBox(
                                          width: 350,
                                          child: Text("Internet handling fee per ticket may be levie."
                                              "Please check your total amount before payment",style: AboutEventParaTerms,),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              ],
                          ),

                         Column(

                           children: [
                           ],
                         )



                       ],


                     ),

                  )
                ],
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Form(
                  key: _formKey,
                  child: Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: rememberMe,
                    onChanged: (newValue) {
                      setState(() => rememberMe = newValue!);
                    },
                  ),
                ),
                Text("I Confirm That I Am Healthy",style: EventDate,)
              ],
            ),
          ],
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
        child: BottomSheetWithRadioButton(),
      );
    },
  );

}