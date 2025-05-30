import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Filteroptionrow extends StatelessWidget {
  final String buttonName;
  const Filteroptionrow({super.key,required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
                      top: 15,
                      left: Screensize.width * 0.03,
                      right: Screensize.width * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Filter Options",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: Screensize.width * 0.01,vertical: 15),
            padding: EdgeInsets.symmetric(
                vertical: Screensize.height * 0.005,
                horizontal: Screensize.width * 0.05),
            decoration: BoxDecoration(
              color: GlobalColors.pinkF3,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              buttonName,
              style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.buttonColor),
            ),
          ),
        ],
      ),
    );
  }
}
