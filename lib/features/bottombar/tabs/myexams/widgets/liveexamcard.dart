import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Liveexamcard extends StatelessWidget {
  const Liveexamcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Screensize.width*0.02),
      height: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.only(
        left: Screensize.width * 0.05,
        right: Screensize.width * 0.05,
        // top: Screensize.height * 0.01
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
                child: Text(
                  "SSC General Studies",
                  style: TextStyle(
                    color: GlobalColors.liveExamText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _InfoItem("25 Feb , 2025", "icons/calendar.png", "10:00 AM",
                    "icons/time.png"),
                _InfoItem("Prize: ₹5 Lac", "icons/trophy.png",
                    "10,000 Participants", "icons/group.png"),
                _InfoItem("Duration:1 Hour", "icons/hour-glass.png",
                    "50 Questions", "icons/hour-glass.png")
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
                child: Text(
                  "Subjects Covered:",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
                child: Wrap(
                  spacing: Screensize.width * 0.02,
                  runSpacing: Screensize.height * 0.01,
                  children: [
                    _subjectItem("icons/calendar.png", "History"),
                    _subjectItem("icons/calendar.png", "History"),
                    _subjectItem("icons/calendar.png", "History"),
                    _subjectItem("icons/calendar.png", "History"),
                    _subjectItem("icons/calendar.png", "History"),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.h),
                    backgroundColor: Color(0xFFF2F4F5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "icons/calendar.png",
                          width: Screensize.width * 0.08,
                          height: Screensize.height * 0.03,
                          color: GlobalColors.liveExamText,
                        ),
                        Text(
                          "Important Instructions",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: GlobalColors.liveExamText,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: GlobalColors.liveExamText,
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
            child: CustomButton(
              text: "Start Exams",
              onTap: () {},
              color: GlobalColors.buttonColor,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _InfoItem(
      String label_1, String imagePath_1, String lable_2, String imagePath_2) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.005),
      padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Color(0xFFF2F4F5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Image.asset(
                imagePath_1,
                width: Screensize.width * 0.1,
                height: Screensize.height * 0.03,
                color: GlobalColors.liveExamText,
              ),
              Text(
                label_1,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: GlobalColors.liveExamText,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Row(
            children: [
              Image.asset(
                imagePath_2,
                width: Screensize.width * 0.1,
                height: Screensize.height * 0.03,
                color: GlobalColors.liveExamText,
              ),
              Text(
                lable_2,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: GlobalColors.liveExamText,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _subjectItem(String imagePath, String label) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Screensize.height * 0.01,
        horizontal: Screensize.width * 0.05,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFDF2E8),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: Screensize.width * 0.06,
            height: Screensize.height * 0.018,
            color: Color(0xFFEF7F1A),
          ),
          Text(
            label,
            style: TextStyle(
                color: Color(0xFFEF7F1A),
                fontSize: 12.sp,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
