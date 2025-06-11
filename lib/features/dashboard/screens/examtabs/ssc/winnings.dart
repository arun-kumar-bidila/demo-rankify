import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';
import 'package:rankify/features/dashboard/screens/examtabs/ssc/widgets/winningsinfo.dart';


class Winnings extends StatefulWidget {
  const Winnings({super.key});

  @override
  State<Winnings> createState() => _WinningsState();
}

class _WinningsState extends State<Winnings> {


  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: Variables.top,
            left: Variables.side,
            right: Variables.side,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Variables.top, horizontal: Variables.side),
                decoration: BoxDecoration(
                    gradient: GlobalColors.primaryGradient,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r))),
                child: Row(
                  spacing: Variables.rowspace,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 25.r,
                      color: Colors.white,
                    ),
                    Expanded(
                        child: Text(
                      "SSC General Studies",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                    Row(
                      spacing: Variables.rowwidgetspace,
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 20.r,
                          color: Colors.white,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4d 0h",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "28m 49s",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      spacing: Variables.rowwidgetspace,
                      children: [
                        Icon(
                          Icons.local_fire_department_outlined,
                          size: 20.r,
                          color: Colors.white,
                        ),
                        Text(
                          "₹82",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Winningsinfo(),
            ],
          ),
        ),
      ),
    );
  }
}
