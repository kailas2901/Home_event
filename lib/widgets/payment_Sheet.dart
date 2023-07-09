import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_event/Style/Style.dart';
import 'package:home_event/pages/Home.dart';
import 'package:home_event/pages/Profile.dart';
import 'package:home_event/widgets/Favourate%20Card.dart';
import 'package:home_event/pages/RazorPay.dart';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:home_event/pages/razor_credentials.dart' as razorCredentials;

class BottomSheetWithRadioButton extends StatefulWidget {
  const BottomSheetWithRadioButton({Key? key}) : super(key: key);

  @override
  State<BottomSheetWithRadioButton> createState() => _BottomSheetWithRadioButtonState();
}

class _BottomSheetWithRadioButtonState extends State<BottomSheetWithRadioButton> {
  late int _selectedValue;

  final _razorpay = Razorpay();

  @override
  void initState() {
    _selectedValue = 1;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
      _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
      _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    });
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print(response);
    verifySignature(
      signature: response.signature,
      paymentId: response.paymentId,
      orderId: response.orderId,
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print(response);
    // Do something when payment fails
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(response.message ?? ''),
      ),
    );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print(response);
    // Do something when an external wallet is selected
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(response.walletName ?? ''),
      ),
    );
  }

// create order
  void createOrder() async {
    String username = razorCredentials.keyId;
    String password = razorCredentials.keySecret;
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('$username:$password'))}';

    Map<String, dynamic> body = {
      "amount": 100,
      "currency": "INR",
      "receipt": "rcptid_11"
    };
    var res = await http.post(
      Uri.https(
          "api.razorpay.com", "v1/orders"), //https://api.razorpay.com/v1/orders
      headers: <String, String>{
        "Content-Type": "application/json",
        'authorization': basicAuth,
      },
      body: jsonEncode(body),
    );

    if (res.statusCode == 200) {
      openGateway(jsonDecode(res.body)['id']);
    }
    print(res.body);
  }

  openGateway(String orderId) {
    var options = {
      'key': razorCredentials.keyId,
      'amount': 100, //in the smallest currency sub-unit.
      'name': 'Acme Corp.',
      'order_id': orderId, // Generate order_id using Orders API
      'description': 'Fine T-Shirt',
      'timeout': 60 * 5, // in seconds // 5 minutes
      'prefill': {
        'contact': '9123456789',
        'email': 'ary@example.com',
      }
    };
    _razorpay.open(options);
  }

  verifySignature({
    String? signature,
    String? paymentId,
    String? orderId,
  }) async {
    Map<String, dynamic> body = {
      'razorpay_signature': signature,
      'razorpay_payment_id': paymentId,
      'razorpay_order_id': orderId,
    };

    var parts = [];
    body.forEach((key, value) {
      parts.add('${Uri.encodeQueryComponent(key)}='
          '${Uri.encodeQueryComponent(value)}');
    });
    var formData = parts.join('&');
    var res = await http.post(
      Uri.https(
        "10.0.2.2", // my ip address , localhost
        "razorpay_signature_verify.php",
      ),
      headers: {
        "Content-Type": "application/x-www-form-urlencoded", // urlencoded
      },
      body: formData,
    );

    print(res.body);
    if (res.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(res.body),
        ),
      );
    }
  }

  @override
  void dispose() {
    _razorpay.clear(); // Removes all listeners

    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: lineardecoration,
          ), // Adjust the height as per your requirement
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: RadioListTile(

                    selectedTileColor: Colors.indigoAccent,
                    value: 1,
                    activeColor: Colors.red,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                    subtitle: Text('Credit/Debit  card with Easier way to \npay - Online and on your mobile.'
                      ,style: TextStyle(
                          fontSize: 10,
                          color: Colors.white.withOpacity(0.5)
                      ), ),
                    title: Text(' RazorPay',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),),

                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: RadioListTile(

                    selectedTileColor: Colors.indigoAccent,
                    value: 2,
                    activeColor: Colors.red,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                    subtitle: Text('Credit/Debit  card with Easier way to \npay - Online and on your mobile.'
                      ,style: TextStyle(
                          fontSize: 10,
                          color: Colors.white.withOpacity(0.5)
                      ), ),
                    title: Text(' PayPal',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),),

                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: RadioListTile(

                    selectedTileColor: Colors.indigoAccent,
                    value: 3,
                    activeColor: Colors.red,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                    subtitle: Text('Credit/Debit  card with Easier way to \npay - Online and on your mobile.'
                      ,style: TextStyle(
                          fontSize: 10,
                          color: Colors.white.withOpacity(0.5)
                      ), ),
                    title: Text(' PayPal',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),),

                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    if(_selectedValue == 1 ){
                      createOrder();
                    }
                    else if(_selectedValue == 2 ){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                    }
                    if( _selectedValue == 3 ){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                    };
                    // Handle button press
                    // Navigator.of(context).pop(_selectedValue);
                  },
                  child: Text('OK'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

