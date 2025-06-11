import 'package:flutter/material.dart';
import 'package:rankify/features/auth/screens/language.dart';
import 'package:rankify/common/widgets/rectangle_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/auth/screens/successful.dart';
import 'package:rankify/utils/userdata.dart';

class Examcategory extends StatefulWidget {
  const Examcategory({
    super.key,
  });

  @override
  State<Examcategory> createState() => _ExamcategoryState();
}

class _ExamcategoryState extends State<Examcategory> {
  Color textColor = GlobalColors.textBlack;
  Color buttonColor = GlobalColors.backgroundColor;
  Map<String, String> userStateExam = {
    "Andhra Pradesh": "APPSC",
    "Telangana": "TPSC",
    "Arunachal Pradesh": "TNPSC",
    "Assam": "TNPSC",
    "Bihar": "TNPSC",
    "Chhattisgarh": "TNPSC",
    "Goa": "TNPSC",
    "Gujarat": "TNPSC",
    "Haryana": "TNPSC",
    "Himachal Pradesh": "TNPSC",
    "Jharkhand": "TNPSC",
    "Karnataka": "TNPSC",
    "Kerala": "TNPSC",
    "Madhya Pradesh": "TNPSC",
    "Maharashtra": "TNPSC",
    "Manipur": "TNPSC",
    "Meghalaya": "TNPSC",
    "Mizoram": "TNPSC",
    "Nagaland": "TNPSC",
    "Odisha": "TNPSC",
    "Punjab": "TNPSC",
    "Rajasthan": "TNPSC",
    "Sikkim": "TNPSC",
    "Tamil Nadu": "TNPSC",
    "Tripura": "TNPSC",
    "Uttar Pradesh": "TNPSC",
    "Uttarakhand": "TNPSC",
    "West Bengal": "TNPSC",
  };

  void changeColor() {
    setState(() {
      textColor = GlobalColors.textWhite;
      buttonColor = GlobalColors.buttonColor;
    });
  }

  void NavigateToSuccessPage() {
    UserData().stateExam = userStateExam[UserData().state];
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Successful()));
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
                              UserData().category = "ssc";
                              NavigateToSuccessPage();
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "BANKS",
                            
                            onPressed: () {
                              UserData().category = "banks";
                              NavigateToSuccessPage();
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "RRB",
                            onPressed: () {
                              UserData().category = "rrb";
                              NavigateToSuccessPage();
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "UPSC",
                            onPressed: () {
                              UserData().category = "upsc";
                              NavigateToSuccessPage();
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: userStateExam[UserData().state]!,
                            onPressed: () {
                              UserData().category = userStateExam[UserData().state]!;
                              NavigateToSuccessPage();
                            }),
                        SizedBox(
                          // height: screenHeight * (10 / 812),
                          height: 20.h,
                        ),
                        RectangleButton(
                            text: "OTHERS",
                            onPressed: () {
                              UserData().category = "others";
                              NavigateToSuccessPage();
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
