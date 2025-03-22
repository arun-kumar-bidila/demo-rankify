import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Completedexam extends StatelessWidget {
  const Completedexam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Screensize.width * 0.02),
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: Screensize.width * 0.05,
        vertical: Screensize.height * 0.01,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: Screensize.height * 0.01,
            ),
            padding: EdgeInsets.symmetric(
                vertical: Screensize.height * 0.01,
                horizontal: Screensize.width * 0.02),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF2F4F5),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SSC General Studies",
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: GlobalColors.buttonColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: Screensize.height * 0.005,
                          horizontal: Screensize.width * 0.01,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFF2E8DF),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Text(
                          "Rank:145/1000",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Color(0xFFEF7F1A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
                  child: Column(
                    children: [
                      _buildExamInfo("Date:", "25 Jan 2025"),
                      _buildExamInfo("Sub:", "SSC General Studies"),
                      _buildExamInfo("Exam Status:", "Completed")
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildScoreInfo("Your Score", "32.33/50"),
                      _buildScoreInfo("Top Score", "49/50"),
                      _buildScoreInfo("Percentile", "62.56")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.01,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Container(
                      height: Screensize.height * 0.02,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFEEDEE4),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Stack(
                        children: [
                          FractionallySizedBox(
                            widthFactor: 5 / 10,
                            child: Container(
                              decoration: BoxDecoration(
                                color: GlobalColors.buttonColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExamInfo(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              color: Color(0xFF808080),
              fontSize: 10.sp,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: Screensize.width * 0.01,
        ),
        Text(
          value,
          style: TextStyle(
              color: Colors.black,
              fontSize: 10.sp,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildScoreInfo(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
              color: Color(0xFF808080),
              fontSize: 12.sp,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Screensize.height * 0.005,
        ),
        Text(
          value,
          style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
