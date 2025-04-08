import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';

class Liveexamtop extends StatelessWidget {
  const Liveexamtop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: Variables.top,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          margin: EdgeInsets.symmetric(horizontal: Variables.side),
          padding: EdgeInsets.symmetric(
              vertical: Variables.top, horizontal: Variables.rowspace),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/R1.png",
                height: Variables.imagelarge,
              ),
              // SvgPicture.asset(
              //   "assets/svg/R1.svg",
              //   height: Variables.imageverylarge,
              // ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Variables.columnspace,
                    horizontal: Variables.rowwidgetspace),
                decoration: BoxDecoration(
                    color: GlobalColors.pinkF3,
                    borderRadius: BorderRadius.circular(15.r)),
                child: Row(
                  spacing: Variables.rowwidgetspace,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 3,
                    ),
                    Text(
                      "Live exam",
                      style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w600,
                          color: GlobalColors.buttonColor),
                    ),
                  ],
                ),
              ),
              Row(
                spacing: Variables.rowwidgetspace,
                children: [
                  Icon(
                    Icons.access_time_outlined,
                    size: 20.r,
                    color: GlobalColors.buttonColor,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "28:18 ",
                        style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Text(
                        "Remaining",
                        style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Variables.side),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SSC General Studies Exam",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: GlobalColors.grey25),
              ),
              Icon(
                Icons.warning,
                color: GlobalColors.buttonColor,
                size: 20.r,
              )
            ],
          ),
        ),
      ],
    );
  }
}
