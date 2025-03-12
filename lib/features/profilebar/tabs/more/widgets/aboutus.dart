import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/buildinstruction.dart';
import 'package:rankify/utils/screen_size.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Text(
            "Rankify is a next-generation AI-driven competitive exam platform designed to help aspirants prepare for government and private sector exams efficiently.",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          "What makes Rankify unique?",
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
        ),
        Column(
          children: [
            Buildinstruction(
                text:
                    "AI-powered live proctored exams for real-time performance evaluation."),
            Buildinstruction(
                text:
                    "Instant rank calculation to help users track their progress."),
            Buildinstruction(
                text: "Gamified rewards & cashback for top performers."),
            Buildinstruction(
                text:
                    "Detailed subject-wise analytics to improve learning outcomes."),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Text(
            "Our mission:To make competitive exam preparation transparent, fair, and data-driven for students.",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Text(
            "Our vision:To make competitive exam preparation transparent, fair, and data-driven for students.",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          "Visit our website: www.rankify.com",
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
        ),
        Text(
          "Contact us: support@rankify.com",
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
