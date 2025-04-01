import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/dashboard/screens/examtabs/ssc/winnings.dart';
import 'package:rankify/features/dashboard/widgets/bottomcontainer2.dart';
import 'package:rankify/features/dashboard/widgets/bottomcontainer3.dart';

import 'package:rankify/features/dashboard/widgets/bottomcontainer4.dart';
import 'package:rankify/features/dashboard/widgets/middlecontainer2.dart';
import 'package:rankify/features/dashboard/widgets/topcontainer2.dart';
import 'package:rankify/utils/screen_size.dart';

class Examcard extends StatefulWidget {
  final Color color;
  final Color textColor;
  final String examTitle;
  final String examImage;
  final String addOn2;
  final String addOn1Label;
  final String addOn1;
  final String availableSlots;
  final String entryFee;
  final String prizePool;
  final String examTime;
  final String examDate;
  final String addOn2Label;
  final String totalSlots;
  final String addOn3Label;
  final String addOn3;
  final Color shadowColor;

  const Examcard({
    super.key,
    required this.shadowColor,
    required this.textColor,
    required this.color,
    required this.examImage,
    required this.examTitle,
    required this.examDate,
    required this.examTime,
    required this.prizePool,
    required this.entryFee,
    required this.availableSlots,
    required this.totalSlots,
    required this.addOn1,
    required this.addOn1Label,
    required this.addOn2,
    required this.addOn2Label,
    required this.addOn3,
    required this.addOn3Label,
  });

  @override
  State<Examcard> createState() => _ExamcardState();
}

class _ExamcardState extends State<Examcard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Winnings()));
        ;
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20.r),
          // boxShadow: [
          //   BoxShadow(
          //       color: widget.shadowColor,
          //       blurRadius: 5,
          //       offset: Offset(0, 2),
          //       spreadRadius: 0)
          // ],
        ),
        child: Column(
          children: [
            Topcontainer2(
              examTitle: widget.examTitle,
              examImage: widget.examImage,
              color: widget.color,
              textColor: widget.textColor,
            ),
            Middlecontainer2(
              examDate: widget.examDate,
              examTime: widget.examTime,
              prizepool: widget.prizePool,
              entryFee: widget.entryFee,
              availableSlots: widget.availableSlots,
              totalSlots: widget.totalSlots,
              color: widget.color,
              textColor: widget.textColor,
            ),
            Bottomcontainer2(
              addOn1: widget.addOn1,
              addOn2: widget.addOn2,
              addOn3: widget.addOn3,
              addOn1Label: widget.addOn1Label,
              addOn2Label: widget.addOn2Label,
              addOn3Label: widget.addOn3Label,
              color: widget.color,
              textColor: widget.textColor,
            )
          ],
        ),
      ),
    );
    ;
  }
}
