import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/dashboard/screens/notifications.dart';
import 'package:rankify/features/dashboard/screens/rankifyCoins.dart';
import 'package:rankify/features/profilebar/screens/profilescreen.dart';
import 'package:rankify/utils/screen_size.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        // top: Screensize.height * 0.02,
        left: Screensize.width * 0.05,
        right: Screensize.width * 0.05,
        bottom: Screensize.height * 0.01,
      ),
      child: Container(
        // color: Colors.amber,
        child: Stack(
          alignment: Alignment.bottomLeft,
         
          children: [
            
            //profile dp image
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profilescreen()));
              },
              child: Image.asset(
                "icons/account.png",
                height: Screensize.height * 0.03,
                color: Colors.orange,
              ),
            ),

            //app logo
            Center(
              child: Image.asset(
                "assets/R1.png",
                height: Screensize.height * 0.05,
              ),
            ),

            //notificatons and coins container
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //notification
                Padding(
                  padding: EdgeInsets.only(right: Screensize.width * 0.04),
                  child: badges.Badge(
                    badgeStyle:
                        badges.BadgeStyle(badgeColor: GlobalColors.buttonColor),
                    badgeContent: Text(
                      "3",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Notifications()));
                      },
                      child: Image.asset(
                        "icons/notification.png",
                        height: Screensize.height * 0.025,
                      ),
                    ),
                  ),
                ),

                //coins container
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: Screensize.height * 0.005,
                      horizontal: Screensize.width * 0.01),
                  decoration: BoxDecoration(
                    color: Color(0x33EF7F1A),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Rankifycoins()));
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset(
                            "icons/dollar.png",
                            height: Screensize.height * 0.02,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
