import 'package:flutter/material.dart';

class GlobalColors {
  //colors
  static const backgroundColor = Color(0xFFF2F2F2);
  static const buttonColor = Color(0xFFCA174D);
  static const inactivebuttonColor = Colors.white;
  static const textBlack = Colors.black;
  static const textWhite = Colors.white;
  static const viewall = Color(0xFFEF7F1A);
  static const liveExamText = Color(0xFF5D5D5D);

  static const grey80 = Color(0xFF808080);
  static const greyF0 = Color(0xFFF0F0F0);
  static const greyF8 = Color(0xFFF8F8F8);
  static const greyD9 = Color(0xFFD9D9D9);
  static const grey5E = Color(0xFF5E5E5E);
  static const grey5D = Color(0xFF5D5D5D);
  static const greyF2 = Color(0xFFF2F2F2);
  static const grey19 = Color(0xFF161719);
  static const greyC6 = Color(0xFFC1C0C6);
  static const greyF5 = Color(0xFFF2F4F5);
  static const greyEC = Color(0xFFECECEC);
  static const grey78 = Color(0xFF767578);
  static const grey9F = Color(0xFF91919F);
  static const grey25 = Color(0xFF212325);
  static const greyFA = Color(0xFFF1F1FA);
  static const grey99 = Color(0x3C3C4399);
  static const greyDA = Color(0xFFD6D7DA);
  static const grey38 = Color(0xFF383838);

  static const deepTeal = Color(0xFF066185);

  static const blueE6 = Color(0xFF3689E6);
  static const blueF3 = Color(0xFF2396F3);
  static const blueF4 = Color(0xFFCCDEF4);
  

  static const orange1A = Color(0xFFEF7F1A);
  static const orangeD1 = Color(0xFFFCE5D1);

  static const green50 = Color(0xFF4CAF50);
  static const greenEE = Color(0xFFE0FBEE);

  static const pinkF3 = Color(0xFFFFEEF3);

  static const whiteDE = Color(0xFFDEDEDE);

  //gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFFA91241), GlobalColors.buttonColor],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  static const LinearGradient progressBar = LinearGradient(
      colors: [Color(0xFFCE2347), Color(0xFFEE7B1C)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}
