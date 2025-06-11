import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/buildinstruction.dart';
import 'package:rankify/utils/screen_size.dart';

class Legality extends StatelessWidget {
  const Legality({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
              "Is Rankify Legal?",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              softWrap: true,
            ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Text(
            "Yes! Rankify is a legally compliant online exam platform that follows all data protection laws, privacy regulations, and fair examination practices.",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            softWrap: true,
          ),
        ),
        
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Data Security & Privacy:",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              Buildinstruction(
                  text:
                      "All user data is encrypted and protected."),
              Buildinstruction(
                  text:
                      "We do not share user data with third parties."),
              Buildinstruction(
                  text:
                      "Secure payment gateways ensure safe transactions."),
             
            ],
          ),
        ),
               
        Padding(
           padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "AI-Based Proctoring & Anti-Cheating Compliance:",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              Buildinstruction(
                  text:
                      "Rankify ensures fair competition through live monitoring."),
              Buildinstruction(
                  text:
                      "Users violating the terms of fair examination will face account suspension."),
            
            ],
          ),
        ),
         Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Copyright & Intellectual Property:",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              Buildinstruction(
                  text:
                      "All exam content, AI technology, and analytics tools are protected under copyright laws."),
              Buildinstruction(
                  text:
                      "Users are not permitted to copy, share, or distribute Rankify’s content."),
            
            ],
                   ),
         ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          child: Text(
            "By using Rankify, you agree to follow our platform’s legal policies.",
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