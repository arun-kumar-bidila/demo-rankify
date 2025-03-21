import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/widgets/morefromrankify.dart';
import 'package:rankify/features/profilebar/widgets/mybalance.dart';
import 'package:rankify/features/profilebar/widgets/profilefeatures.dart';
import 'package:rankify/utils/screen_size.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Screensize.width * 0.05,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //profile dp row
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20.r,
                          color: GlobalColors.grey19,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: GlobalColors.orange1A, width: 2)),
                        child: CircleAvatar(
                          radius: Screensize.height * 0.03,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            "assets/dp.jpg",
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sreenivasulu Gangala",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: GlobalColors.grey19),
                          ),
                          Text(
                            "Latest Ranks in SSC : 12",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey9F,
                            ),
                          )
                        ],
                      ),
                      Image.asset(
                        "icons/pencil-outline.png",
                        height: Screensize.height * 0.03,
                      ),
                    ],
                  ),
                ),

                //my balance container
                Mybalance(),

                //profile features
                Profilefeatures(),

                //more from rankify
                Morefromrankify(),

                //version text
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.01,
                  ),
                  child: Center(
                    child: Text(
                      "Version 0.1.0",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: GlobalColors.grey19),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
