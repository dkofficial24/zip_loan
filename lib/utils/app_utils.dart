import 'package:fluttertoast/fluttertoast.dart';
import 'package:zip_loan/utils/strings.dart';

class AppUtils {
  static void showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0);
  }

  static bool validateMobileNumber(String phoneNumber) {
    String pattern = r'(^[7-9]\d{9}$)';
    RegExp regExp = new RegExp(pattern);
    if (phoneNumber.length == 0) {
      showToast(StringRes.EnterMobileNo);
      return false;
    } else if (!regExp.hasMatch(phoneNumber)) {
      showToast(StringRes.InvalidMobileNo);
      return false;
    }
    return true;
  }
}
