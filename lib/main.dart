import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zip_loan/zip_loan.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(ZipLoanApp());
}
