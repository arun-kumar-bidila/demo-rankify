import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';
import 'package:rankify/utils/screen_size.dart';

class Winnerslistexamtab extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  final int examIndex;
  final String examImagePath;
  final String examTitle;
  final String examCount;
  const Winnerslistexamtab(
      {super.key,
      required this.examImagePath,
      required this.examTitle,
      required this.examCount,
      required this.currentIndex,
      required this.examIndex,
      required this.onTap});

  @override
  State<Winnerslistexamtab> createState() => _WinnerslistexamtabState();
}

class _WinnerslistexamtabState extends State<Winnerslistexamtab> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
        widget.onTap(widget.examIndex)
      ,
      child: Column(
        spacing: Screensize.height * 0.003,
        children: [
          Image.asset(
            widget.examImagePath,
            height: Screensize.height * 0.025,
          ),
          Text(
            widget.examTitle,
            style: TextStyle(
                fontSize: 9.sp,
                color: widget.currentIndex == widget.examIndex
                    ? GlobalColors.buttonColor
                    : Colors.black,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: Screensize.height * 0.005),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: Variables.rowwidgetspace),
                  child: Text(
                    widget.examCount,
                    style: TextStyle(fontSize: 7.sp, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.group,
                  size: 10.r,
                )
              ],
            ),
          ),
          if (widget.currentIndex == widget.examIndex)
            Container(
              width: Screensize.width * 0.08,
              height: Screensize.height * 0.003,
              decoration: BoxDecoration(
                  color: GlobalColors.buttonColor,
                  borderRadius: BorderRadius.circular(5.r)),
            ),
            if (widget.currentIndex != widget.examIndex)
            Container(
             
              height: Screensize.height * 0.003,
              
            )
        ],
      ),
    );
  }
}
