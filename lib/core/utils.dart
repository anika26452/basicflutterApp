import 'package:basic_ui_withflutter/core/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static showToast(Text) {
    Fluttertoast.showToast(
        msg: Text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue, // Color(0xff4c505b),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}