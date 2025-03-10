import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Yourreferralcodewidget extends StatelessWidget {
  const Yourreferralcodewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Screensize.height * 0.03),
      padding: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.01,
          horizontal: Screensize.width * 0.03),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Referral Code",
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xFF808080)),
          ),
          SizedBox(
            height: Screensize.height * 0.01,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Screensize.height * 0.01,
                horizontal: Screensize.width * 0.05),
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "FRIEND2025",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: GlobalColors.buttonColor,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: GlobalColors.buttonColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
