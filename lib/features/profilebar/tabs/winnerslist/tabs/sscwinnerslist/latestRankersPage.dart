import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/winnerslist/widgets/rankerdetails.dart';
import 'package:rankify/utils/screen_size.dart';

class Latestrankerspage extends StatefulWidget {
  final String examTitle;
  final String exam;
  const Latestrankerspage(
      {super.key, required this.examTitle, required this.exam});

  @override
  State<Latestrankerspage> createState() => _LatestrankerspageState();
}

class _LatestrankerspageState extends State<Latestrankerspage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          Container(
            margin: EdgeInsets.symmetric(
              vertical: Screensize.height * 0.01,
              horizontal: Screensize.width * 0.03,
            ),
            padding: EdgeInsets.symmetric(
              vertical: Screensize.height * 0.01,
              horizontal: Screensize.width * 0.02,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2, color: GlobalColors.buttonColor)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/${widget.exam}.png",
                          height: Screensize.height * 0.03,
                        ),
                        Text(
                          widget.exam.toUpperCase(),
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: GlobalColors.buttonColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "EXAM DETAILS",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            widget.examTitle.toUpperCase(),
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(right: Screensize.width * 0.01),
                            child: Icon(
                              Icons.calendar_month,
                              size: 10.r,
                            ),
                          ),
                          Text(
                            "02/04/2025",
                            style: TextStyle(
                                fontSize: 10.sp, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(right: Screensize.width * 0.01),
                            child: Icon(
                              Icons.access_alarm,
                              size: 10.r,
                            ),
                          ),
                          Text(
                            "10:30",
                            style: TextStyle(
                                fontSize: 10.sp, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                              color: GlobalColors.orange1A, width: 1)),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(right: Screensize.width * 0.01),
                            child: Icon(
                              Icons.upload,
                              size: 10.r,
                            ),
                          ),
                          Text(
                            "Export",
                            style: TextStyle(
                                fontSize: 10.sp, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              for (int i = 0; i < 10; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Rankerdetails(
                        name: "Sasi Krishna",
                        marks: "149/150",
                        rank: "1",
                        location: "TS",
                        won: "30,000",
                        color: (i % 2 == 0)
                            ? GlobalColors.orange1A
                            : GlobalColors.blueE6,
                        backgroundColor: (i % 2 == 0)
                            ? GlobalColors.orangeD1
                            : GlobalColors.blueF4,
                      )),
                      Expanded(
                          child: Rankerdetails(
                        name: "Sasi Krishna",
                        marks: "149/150",
                        rank: "1",
                        location: "TS",
                        won: "30,000",
                        color: (i % 2 == 0)
                            ? GlobalColors.blueE6
                            : GlobalColors.orange1A,
                        backgroundColor: (i % 2 == 0)
                            ? GlobalColors.blueF4
                            : GlobalColors.orangeD1,
                      )),
                      //  Rankerdetails()
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
