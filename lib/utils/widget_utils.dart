import 'package:flutter/material.dart';
import 'package:zip_loan/utils/colors.dart';

///for customize properties add optional parameters
getTextFieldDecoration({String hintText=""}){
  return InputDecoration(
      fillColor: ColorRes.TextFieldBgColor,
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(
          color: ColorRes.TextHintColor, fontSize: 18),
      contentPadding: const EdgeInsets.all(8),
      border: textFieldOutlineInputBorder(),
      focusedBorder: textFieldOutlineInputBorder(),
      enabledBorder: textFieldOutlineInputBorder());
}


textFieldOutlineInputBorder(){
  return OutlineInputBorder(
      borderSide:
      BorderSide(width: 1, color: ColorRes.BorderColor),
      borderRadius: BorderRadius.circular(30));
}