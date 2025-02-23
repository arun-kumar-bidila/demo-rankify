import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';

class Toprankers extends StatelessWidget {
  const Toprankers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //toptitle
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Rankers",
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

          //ranker cards
          Container(
            // color: Colors.yellow,
            height: 150.h,
            child: AnotherCarousel(
              images: [
                SizedBox(
                  height: 120,
                  child: _buildRankers(context),
                ),
                SizedBox(
                  height: 120,
                  child: _buildRankers(context),
                ),
                SizedBox(
                  height: 120,
                  child: _buildRankers(context),
                ),
                 SizedBox(
                  height: 120,
                  child: _buildRankers(context),
                ),
                 SizedBox(
                  height: 120,
                  child: _buildRankers(context),
                ),
              ],
              dotBgColor: GlobalColors.backgroundColor,
              indicatorBgPadding: 2,
              dotSize: 2,
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
            padding:  EdgeInsets.all(5.r),
            child: Card(
              margin: EdgeInsets.only(bottom: 20.r),
              color: Colors.white,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Container(
                width: 80.w,
                height: 120.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      radius: 20.r,
                    ),
                    Text(
                      "#1 Sumitra",
                      style:
                          TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
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
