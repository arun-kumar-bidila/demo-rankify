import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';

class Upcomingexams extends StatefulWidget {
  const Upcomingexams({super.key});

  @override
  State<Upcomingexams> createState() => _UpcomingexamsState();
}

class _UpcomingexamsState extends State<Upcomingexams> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Exams",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),

              //viewall

              TextButton(
                onPressed: () {},
                style:
                    TextButton.styleFrom(foregroundColor: GlobalColors.viewall),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "View all",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: GlobalColors.viewall,
                          decorationThickness: 2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 23.w,
                      color: GlobalColors.viewall,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}