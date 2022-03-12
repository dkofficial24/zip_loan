import 'package:flutter/material.dart';
import 'package:zip_loan/utils/constants.dart';
import 'package:zip_loan/utils/routes.dart';

///Splash Page can be skipped as it is already loaded from Android side
class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.pushReplacementNamed(context, AppRoutes.LoginPage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).cardColor,
      body: Center(
        child: Image.asset(LogoWithName),
      ),
    );
  }
}
