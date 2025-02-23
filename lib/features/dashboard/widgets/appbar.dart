import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;
import 'package:rankify/constants/colors.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.r),
      child: Container(
        // color: Colors.amber,
        alignment:Alignment.center,
        // color: Colors.red,
        child: Row(
          
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 15.r),
              width: MediaQuery.of(context).size.width * 0.30,
              alignment: Alignment.centerLeft,
              // color: Colors.purpleAccent,
              child: Image.asset(
                color: Color(0xFFEF7F1A),
                "icons/account.png",
                height: 22.h,
                width: 22.w,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.31,
              alignment: Alignment.center,
              // color: Colors.pink,
              child: Image.asset(
                "assets/R1.png",
                height: 28.h,
                width: 71.w,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.r),
              width: MediaQuery.of(context).size.width * 0.30,
              alignment: Alignment.center,
        // color: Colors.green,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 badges.Badge(
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: GlobalColors.buttonColor
                  ),
                    badgeContent:Text("3",style: TextStyle(color: Colors.white,fontSize: 6.sp),),
                    child:Image.asset(
                    "icons/notification.png",
                    height: 22.h,
                    width: 28.w,
                  ), 
                  ),
                  SizedBox(width: 12.w,),
                  Container(
                    height: 22.h,
                    width: 37.h,
                    decoration: BoxDecoration(
                      color: Color(0x33EF7F1A),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "icons/dollar.png",
                          width: 16.w,
                          height: 16.h,
                        ),
                        SizedBox(
                          width: 3.w,
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
      ),
    );
  }
}
