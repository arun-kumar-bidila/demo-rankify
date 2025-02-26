import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Toprankers extends StatelessWidget {
  const Toprankers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      width: double.infinity,
      height: Screensize.height * 0.26,
      margin: EdgeInsets.only(
        // top: Screensize.height * 0.01,
        left: Screensize.width * 0.02,
        right: Screensize.width * 0.02,
      ),
      child: Column(
        children: [
          //toptitle
          Container(
            height: Screensize.height * 0.06,
            // color: Colors.pink,
            padding: EdgeInsets.only(
                // top: Screensize.height * 0.01,
                // bottom: Screensize.height * 0.001,
                left: Screensize.width * (6 / 375),
                right: Screensize.width * (6 / 375)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Rankers",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),

                //viewall

                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: GlobalColors.viewall),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "View all",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: GlobalColors.viewall,
                            decorationThickness: 1,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: Screensize.width * 0.01,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: Screensize.width * (18 / 375),
                        color: GlobalColors.viewall,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          //ranker cards
          Container(
            //  color: Colors.blue,
            // height: 150.h,
            height: Screensize.height * 0.20,
            child: AnotherCarousel(
              images: [
                SizedBox(
                  height: Screensize.height * 0.16,
                  child: _buildRankers(context),
                ),
                SizedBox(
                  height: Screensize.height * 0.16,
                  child: _buildRankers(context),
                ),
                SizedBox(
                  height: Screensize.height * 0.16,
                  child: _buildRankers(context),
                ),
                SizedBox(
                  height: Screensize.height * 0.16,
                  child: _buildRankers(context),
                ),
                SizedBox(
                  height: Screensize.height * 0.16,
                  child: _buildRankers(context),
                ),
              ],
              dotBgColor: GlobalColors.backgroundColor,
              indicatorBgPadding: 2,
              dotSize: Screensize.width * 0.008,
              // dotIncreaseSize: 1,
              dotPosition: DotPosition.bottomCenter,
              dotColor: Colors.grey,
              dotIncreasedColor: GlobalColors.buttonColor,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRankers(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(Screensize.width * (6 / 375)),
            child: Card(
              margin: EdgeInsets.only(bottom: Screensize.height * 0.02),
              color: Colors.white,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SizedBox(
                // width: 80.w,
                // height: 120.h,
                width: Screensize.width * 0.21,
                height: Screensize.height * 0.17,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SSC",
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: GlobalColors.buttonColor,
                          fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      radius: Screensize.width * 0.05,
                    ),
                    Text(
                      "#1 Sumitra",
                      style: TextStyle(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Score:90/100",
                      style: TextStyle(fontSize: 8.sp),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
