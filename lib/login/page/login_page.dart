import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zip_loan/utils/app_utils.dart';
import 'package:zip_loan/utils/colors.dart';
import 'package:zip_loan/utils/constants.dart';
import 'package:zip_loan/utils/strings.dart';
import 'package:zip_loan/utils/widget_utils.dart';

///Instead of long tree widgets,code can be more modular by breaking in multiple stateless widgets
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _mobileEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: ColorRes.PrimaryColor,
                padding: EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height * 0.65,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Logo,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(width: 1),
                        Text(
                          StringRes.AppName,
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      StringRes.Welcome,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: ColorRes.TitleColor),
                    ),
                    SizedBox(height: 16),
                    Text(
                      StringRes.SignLoginTitle,
                      style:
                          TextStyle(fontSize: 20, color: ColorRes.TitleColor),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: _mobileEditingController,
                        scrollPadding: EdgeInsets.zero,
                        cursorColor: ColorRes.PrimaryColor,
                        keyboardType: TextInputType.number,
                        decoration: getTextFieldDecoration(
                            hintText: StringRes.MobileNumberTextHint),
                        style: TextStyle(
                            color: ColorRes.TextHintColor, fontSize: 18),
                        onChanged: (value) {
                          // do something here
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(StringRes.OtpSendMsg),
                    SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Container(
                            alignment: Alignment.topCenter,
                            height: 30,
                            child: Text(StringRes.OTP)),
                        Expanded(
                          child: PinCodeTextField(
                            appContext: context,
                            length: 5,
                            obscureText: false,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            animationType: AnimationType.fade,
                            cursorColor: ColorRes.PrimaryColor,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              selectedColor: ColorRes.OtpFieldColor,
                              inactiveColor: ColorRes.OtpFieldColor,
                              fieldHeight: 30,
                              fieldWidth: 30,
                              borderWidth: 0,
                              errorBorderColor: ColorRes.OtpFieldColor,
                              inactiveFillColor: ColorRes.OtpFieldColor,
                              selectedFillColor: ColorRes.OtpFieldColor,
                              activeFillColor: ColorRes.OtpFieldColor,
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            enableActiveFill: true,
                            onCompleted: (v) {
                              ///do something here
                            },
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Container(
                        width: double.maxFinite,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              elevation: 6,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 8),
                              backgroundColor: ColorRes.PrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              side: BorderSide(
                                  width: 1, color: ColorRes.BorderColor)),
                          child: const Text(
                            StringRes.Continue,
                            style: TextStyle(
                                fontSize: 18, color: ColorRes.ButtonText),
                          ),
                          onPressed: () {
                            ///We can use textFormField and validator as per requirement
                            bool isValid = AppUtils.validateMobileNumber(_mobileEditingController.text);
                             if(isValid) {
                               AppUtils.showToast("Open next screen");
                             }
                          },
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

}
