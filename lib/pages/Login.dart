import 'package:flutter/material.dart';
import 'package:home_event/widgets/LoinPage.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sign_in(),
    );
  }
}
