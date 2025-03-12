import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/buildinstruction.dart';
import 'package:rankify/utils/screen_size.dart';

class Communityguidelines extends StatelessWidget {
  const Communityguidelines({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Expanded(
            child: Text(
              "Welcome to Rankify! To ensure a fair and productive environment for all users, please follow these guidelines:",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              softWrap: true,
            ),
          ),
        ),
        Column(
          children: [
            Buildinstruction(
                text:
                    "Respect Other Users  No hate speech, discrimination, or harassment."),
            Buildinstruction(
                text:
                    "No Cheating Rankify uses AI-based proctoring; any unfair practices will lead to disqualification."),
            Buildinstruction(
                text:
                    "Authentic Participation Only registered candidates are allowed to take exams."),
            Buildinstruction(
                text:
                    "No External Help  Users must not use books, notes, or mobile devices during live exams."),
            Buildinstruction(
                text:
                    "Follow Exam Rules Violating exam guidelines may result in account suspension."),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Text(
            "Stay honest, compete fairly, and grow your rank!",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}





















