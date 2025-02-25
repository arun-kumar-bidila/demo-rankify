import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: Screensize.width * 0.01,
          right: Screensize.width * 0.01,
          bottom: Screensize.height * 0.02,
          ),
      // color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                width: Screensize.width * 0.32,
                alignment: Alignment.centerLeft,
                // color: Colors.purpleAccent,
                child: Image.asset(
                  color: Color(0xFFEF7F1A),
                  "icons/account.png",
                  // height: 22.h,
                  // width: 22.w,
                  height: Screensize.height * (22 / 812),
                  width: Screensize.width * (22 / 375),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.34,
                alignment: Alignment.center,
                // color: Colors.pink,
                child: Image.asset(
                  "assets/R1.png",
                  // height: 28.h,
                  // width: 71.w,
                  height: Screensize.height * (28 / 812),
                  width: Screensize.width * (71 / 375),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.32,
                alignment: Alignment.center,
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    badges.Badge(
                      badgeStyle:
                          badges.BadgeStyle(badgeColor: GlobalColors.buttonColor),
                      badgeContent: Text(
                        "3",
                        style: TextStyle(color: Colors.white, fontSize: 6.sp),
                      ),
                      child: Image.asset(
                        "icons/notification.png",
                        // height: 22.h,
                        // width: 28.w,/
                        height: Screensize.height * (19 / 812),
                        width: Screensize.width * (17 / 375),
                      ),
                    ),
                    SizedBox(
                      width: Screensize.width * (0.05),
                    ),
                    Container(
                      // height: 22.h,
                      // width: 37.h,
                      height: Screensize.height * (22 / 812),
                      width: Screensize.width * (37 / 375),
                      decoration: BoxDecoration(
                        color: Color(0x33EF7F1A),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "icons/dollar.png",
                            // width: 16.w,
                            // height: 16.h,
          
                            width: Screensize.width * (16 / 375),
                            height: Screensize.height * (16 / 812),
                          ),
                          SizedBox(
                            // width: 3.w,
                            width: Screensize.width * (0.015),
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                fontSize: 7.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
