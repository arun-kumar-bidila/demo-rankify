import 'package:flutter/material.dart';
import 'package:rankify/features/auth/screens/language.dart';
import 'package:rankify/common/widgets/rectangle_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Examcategory extends StatefulWidget {
  const Examcategory({super.key});

  @override
  State<Examcategory> createState() => _ExamcategoryState();
}

class _ExamcategoryState extends State<Examcategory> {
  Color textColor = GlobalColors.textBlack;
  Color buttonColor = GlobalColors.backgroundColor;

  void changeColor() {
    setState(() {
      textColor = GlobalColors.textWhite;
      buttonColor = GlobalColors.buttonColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/R1.png",
          height: 36.h,
          width: 90.w,
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.r),
        child: Column(
          children: [
            SizedBox(
              // height: screenHeight * 0.01,
              height: 25.h,
            ),
            Text(
              "Select your Exam category",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            // SizedBox(
            //   // height: screenHeight * (20 / 812),
            //   height: 25.sp,
            // ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.r),
                margin: EdgeInsets.only(top: 30.r),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                    ),
                    ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RectangleButton(
                            text: "SSC",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()));
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "BANKS",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()));
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "RRB",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()));
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "UPSC",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()));
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "APPSC",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()));
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "OTHERS",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()));
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 25.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Note:",
                              style: TextStyle(
                                  color: GlobalColors.buttonColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              // width: screenWidth * (8 / 812),
                              width: 10.w,
                            ),
                            Expanded(
                              child: Text(
                                "You can add additional exam or deselect current exam preparation."
                                "These changes can be done by going to the menu section in the home page and add your changes.",
                                softWrap: true,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
