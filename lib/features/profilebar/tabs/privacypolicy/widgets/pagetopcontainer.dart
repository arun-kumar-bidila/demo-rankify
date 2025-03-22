import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Pagetopcontainer extends StatelessWidget {
  const Pagetopcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: Screensize.height * 0.02,
      ),
      decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFFA91241),GlobalColors.buttonColor],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter),
      borderRadius: BorderRadius.circular(10.r)),
      child: Column(

        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: Screensize.height * 0.01,
            ),
            child: Image.asset(
              "icons/shield.png",
              height: Screensize.height * 0.05,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: Screensize.height * 0.01,
            ),
            child: Text(
              "RANKIFY",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: Colors.white
              ),
            ),
          ),
          Padding(
           padding: EdgeInsets.only(
              bottom: Screensize.height * 0.01,
            ),
            child: Text(
              "Privacy Policy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: Colors.white
              ),
            ),
          ),
          Text(
            "Last Updated : January 29,2025",
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
