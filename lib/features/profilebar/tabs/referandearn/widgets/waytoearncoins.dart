import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Waytoearncoins extends StatefulWidget {
  Waytoearncoins({super.key});

  @override
  State<Waytoearncoins> createState() => _WaytoearncoinsState();
}

class _WaytoearncoinsState extends State<Waytoearncoins> {
  final List<Map<String, dynamic>> earnways = [
    {
      "iconPath": "icons/time.png",
      "title": "Welcome Coins",
      "subtitle": "5 Coins"
    },
    {
      "iconPath": "icons/time.png",
      "title": "Refer Friends",
      "subtitle": "25 Coins"
    },
    {
      "iconPath": "icons/time.png",
      "title": "Complete Profile",
      "subtitle": "25 Coins"
    },
    {
      "iconPath": "icons/time.png",
      "title": "Daily Check-in",
      "subtitle": "5 Coins"
    },
    {
      "iconPath": "icons/time.png",
      "title": "Live Exam Compensation",
      "subtitle": "5 Coins"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
      padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
      // height: double.infinity,
      width: double.infinity,
      // color: Colors.amber,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
            child: Text(
              "Ways to Earn Coins",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++) ...[
                  Container(
                    
                    margin: EdgeInsets.symmetric(
                        horizontal: Screensize.width * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: Screensize.width * 0.1,
                        vertical: Screensize.height * 0.02),
                    child: Column(
                      children: [
                        Image.asset(
                          earnways[i]["iconPath"],
                          height: Screensize.height * 0.03,
                          color: GlobalColors.buttonColor,
                        ),
                        SizedBox(
                          height: Screensize.height * 0.01,
                        ),
                        Text(
                          earnways[i]["title"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                          // softWrap: true,
                        ),
                        SizedBox(
                          height: Screensize.height * 0.01,
                        ),
                        Text(
                          earnways[i]["subtitle"],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: GlobalColors.buttonColor,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  )
                ],
              ],
            ),
          ),

          // SizedBox(
          //   height: Screensize.height * 0.15,
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: earnways.length,
          //       itemBuilder: (context, index) {
          //         var section = earnways[index];
          //         return Container(
          //           width: Screensize.width * 0.3,
          //           margin: EdgeInsets.symmetric(
          //               horizontal: Screensize.width * 0.02),
          //           padding: EdgeInsets.symmetric(
          //               vertical: Screensize.height * 0.02,
          //               horizontal: Screensize.width * 0.02),
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(10.r)),
          //           child: Column(
          //             mainAxisSize: MainAxisSize.min,
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Image.asset(
          //                 section["iconPath"],
          //                 height: Screensize.height * 0.03,
          //                 color: GlobalColors.buttonColor,
          //               ),
          //               // SizedBox(
          //               //   height: Screensize.height * 0.01,
          //               // ),
          //               Text(
          //                 section["title"],
          //                 textAlign: TextAlign.center,
          //                 style: TextStyle(
          //                   fontSize: 12.sp,
          //                 ),
          //                 // softWrap: true,
          //               ),
          //               // SizedBox(
          //               //   height: Screensize.height * 0.01,
          //               // ),
          //               Text(
          //                 section["subtitle"],
          //                 style: TextStyle(
          //                   fontSize: 14.sp,
          //                   fontWeight: FontWeight.bold,
          //                   color: GlobalColors.buttonColor,
          //                 ),
          //                 softWrap: true,
          //               ),
          //             ],
          //           ),
          //         );
          //       }),
          // ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Screensize.height * 0.02,
                horizontal: Screensize.width * 0.02),
            child: CustomButton(
                text: "Invite Friends",
                onTap: () {},
                color: GlobalColors.buttonColor,
                textColor: Colors.white),
          )
        ],
      ),
    );
  }
}
