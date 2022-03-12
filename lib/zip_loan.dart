import 'package:flutter/material.dart';
import 'package:zip_loan/shared/pages/splash_page.dart';
import 'package:zip_loan/utils/colors.dart';
import 'package:zip_loan/utils/routes.dart';

class ZipLoanApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

