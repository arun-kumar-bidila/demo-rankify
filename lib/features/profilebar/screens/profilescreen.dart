import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/more/screens/more.dart';

import 'package:rankify/features/profilebar/tabs/privacypolicy/screens/privacypolicy.dart';
import 'package:rankify/features/profilebar/tabs/referandearn/screens/referandearn.dart';
import 'package:rankify/features/profilebar/widgets/buildprofilefeature.dart';
import 'package:rankify/utils/screen_size.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        margin: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.06,
          horizontal: Screensize.width * 0.03,
        ),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //profile dp row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xFFEF7F1A), width: 2)),
                        child: CircleAvatar(
                          radius: Screensize.width * 0.07,
                          backgroundColor: Colors.white,
                          // child: Icon(
                          //   Icons.person,
                          //   color: GlobalColors.buttonColor,
                          // ),
                          child: ClipOval(
                            child: Image.asset(
                              "assets/dp.jpg",
                              fit: BoxFit.cover,
                              width: Screensize.width * 0.14,
                              height: Screensize.width * 0.14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Screensize.width * 0.04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sreenivasulu Gangala",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: Screensize.height * 0.005,
                          ),
                          Text(
                            "Latest Ranks in SSC : 12",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF91919F),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    "icons/pencil-outline.png",
                    height: Screensize.height * 0.04,
                  )
                ],
              ),

              //my balance container
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.015,
                  horizontal: Screensize.width * 0.03,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.02,
                  // horizontal: Screensize.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Balance",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF91919F),
                      ),
                    ),
                    SizedBox(
                      height: Screensize.height * 0.01,
                    ),
                    Text(
                      "₹82",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: Screensize.height * 0.01,
                    ),
                    Row(
                      children: [
                        _buildButton("WITH DRAW"),
                        SizedBox(
                          width: Screensize.width * 0.02,
                        ),
                        _buildButton("ADD CASH")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                margin: EdgeInsets.only(bottom: Screensize.height * 0.02),
                // padding: EdgeInsets.symmetric(
                //   vertical: Screensize.height * 0.015,
                //   // horizontal: Screensize.width * 0.02,
                // ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Buildprofilefeature(
                        iconPath: "icons/group.png",
                        label: "Refer & Earn",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Referandearn()));
                        },
                        pos: 0),
                    Buildprofilefeature(
                        iconPath: "icons/trophy-2.png",
                        label: "Winners List",
                        onTap: () {},
                        pos: 0),
                    Buildprofilefeature(
                        iconPath: "icons/profit-growth.png",
                        label: "Check Your Performance",
                        onTap: () {},
                        pos: 0),
                    Buildprofilefeature(
                        iconPath: "icons/gear.png",
                        label: "My Info & Settings",
                        onTap: () {},
                        pos: 0),
                    Buildprofilefeature(
                        iconPath: "icons/exclamation.png",
                        label: "How to Work Rankify",
                        onTap: () {},
                        pos: 0),
                    Buildprofilefeature(
                        iconPath: "icons/padlock.png",
                        label: "Privacy Policy",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Privacypolicy(),
                            ),
                          );
                        },
                        pos: 0),
                    Buildprofilefeature(
                        iconPath: "icons/more.png",
                        label: "More",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => More()));
                        },
                        pos: 0),
                    Buildprofilefeature(
                        iconPath: "icons/24-7.png",
                        label: "24x7 Help & Support ",
                        onTap: () {},
                        pos: 1),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Screensize.width * 0.03,
                    bottom: Screensize.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "More From Rankify",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xFF161719),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  children: [
                    _buildMoreFromRankify("icons/exclamation.png",
                        "Rankify GPT", "AI -Based Learning Support", 0),
                    _buildMoreFromRankify("icons/exclamation.png",
                        "Rankify Store", "Competitive Book Store", 1),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Screensize.height * 0.02),
                child: Center(
                    child: Text(
                  "Version 0.1.0",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: Color(0xFF161719)),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String label) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Screensize.width * 0.05,
          vertical: Screensize.height * 0.005),
      decoration: BoxDecoration(
          color: GlobalColors.buttonColor,
          borderRadius: BorderRadius.circular(5.r)),
      child: Text(
        label,
        style: TextStyle(
            fontSize: 12.sp, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildMoreFromRankify(
      String iconPath, String label, String sublabel, int pos) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        border: pos == 0
            ? Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: Screensize.height * 0.0002,
                ),
              )
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Screensize.height * 0.01,
            horizontal: Screensize.width * 0.03),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              // width: Screensize.width * 0.04,
              height: Screensize.height * 0.03,
            ),
            SizedBox(
              width: Screensize.width * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  sublabel,
                  style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF91919F)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
