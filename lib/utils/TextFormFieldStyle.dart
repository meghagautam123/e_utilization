import 'package:flutter/material.dart';

import '../res/colors.dart';


class TextFormFieldStyle {
  static InputDecoration textFieldStyle(
      )
  {
    return InputDecoration
      (
      contentPadding: EdgeInsets.all(10),
       //labelText: labelTextStr,
      //hintText: hintTextStr,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(80),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(80),
        borderSide:
        BorderSide(color: dark_grey), //<-- SEE HERE
      ),
    );
  }
}
