import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rankify/auth/screens/Sucessful.dart';
// import 'package:rankify/auth/screens/language.dart';
import 'package:rankify/constants/colors.dart';

class RectangleButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const RectangleButton(
      {super.key, required this.text, required this.onPressed});

  @override
  State<RectangleButton> createState() => _RectangleButtonState();
}

class _RectangleButtonState extends State<RectangleButton> {
  Color textColor = GlobalColors.buttonColor;
  Color buttonColor = GlobalColors.inactivebuttonColor;
  void changeColor() {
    setState(() {
      textColor = GlobalColors.textWhite;
      buttonColor = GlobalColors.buttonColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
            onPressed: () {
              changeColor();
            Future.delayed(Duration(milliseconds: 200), widget.onPressed);
            },
            style: TextButton.styleFrom(
              backgroundColor: buttonColor,
              foregroundColor: textColor,
              minimumSize: Size(343.w, 50),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  // width: 1.r,
                      color: Color.fromRGBO(0, 0, 0, 0.15),

                    ),
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: Text(widget.text, style: TextStyle(fontSize: 18.sp)));
  }
}
