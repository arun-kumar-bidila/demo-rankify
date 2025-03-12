import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/buildinstruction.dart';
import 'package:rankify/utils/screen_size.dart';

class Termsandconditions extends StatelessWidget {
  const Termsandconditions({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Expanded(
            child: Text(
              "By accessing and using Rankify, you agree to the following terms and conditions:",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              softWrap: true,
            ),
          ),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Registration & Use:",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              Buildinstruction(
                  text:
                      "Users must register with a valid email and phone number."),
              Buildinstruction(
                  text:
                      "Only one account per user is allowed."),
              
            ],
          ),
        ),
               
        Padding(
           padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Exam Rules & Fair Play:",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              Buildinstruction(
                  text:
                      "AI-powered proctoring is mandatory for live exams."),
              Buildinstruction(
                  text:
                      "Any fraudulent activity will lead to disqualification."),
              Buildinstruction(
                  text:
                      "No screen recording, screenshots, or cheating is allowed."),
            ],
          ),
        ),
         Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payments & Refund Policy:",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              Buildinstruction(
                  text:
                      "Exam fees once paid are non-refundable unless a technical issue occurs."),
              Buildinstruction(
                  text:
                      "Rankify is not responsible for failed payments due to banking errors."),
            
            ],
                   ),
         ),
          Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Suspension & Termination:",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              Buildinstruction(
                  text:
                      "Any user violating our guidelines will face a permanent ban."),
              Buildinstruction(
                  text:
                      "Users engaging in malpractice forfeit their rewards and leaderboard rankings."),
            
            ],
                   ),
         ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Text(
            "For full details, visit our website: www.rankify.com/terms",
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