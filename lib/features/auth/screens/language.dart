import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/auth/screens/successful.dart';
import 'package:rankify/common/widgets/rectangle_button.dart';
import 'package:rankify/constants/colors.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/R1.png",
          // height: 30,
          // width: 60,
          height: 36.h,
          width: 90.w,
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding:  EdgeInsets.all(8.r),
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // Image.asset(
            //     //   "assets/R1.png",
            //     //   width: screenWidth * 0.5,
            //     //   height: screenHeight * 0.2,
            //     // ),
            //     // SizedBox(width: 90,),
            //     // Text("Rankify",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            //   ],
            // ),
            SizedBox(
              // height: screenHeight * 0.01,
              height: 25.h,
            ),
            Text(
              "Select your exam language",
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
                      topRight: Radius.circular(40.r)
                    )
                  ),
                  child: SingleChildScrollView(
                                child: Padding(
                  padding:  EdgeInsets.all(8.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RectangleButton(
                        text: "English",
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Successful()))
                        },
                      ),
                      SizedBox(
                        // height: screenHeight * (10 / 812),
                          height: 20.h,
                      ),
                      RectangleButton(
                        text: "Telugu",
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Successful()))
                        },
                      ),
                      SizedBox(
                       // height: screenHeight * (10 / 812),
                          height: 20.h,
                      ),
                      RectangleButton(
                        text: "Hindi",
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Successful()))
                        },
                      ),
                      SizedBox(
                        // height: screenHeight * (10 / 812),
                          height: 20.h,
                      ),
                      RectangleButton(
                        text: "Kannada",
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Successful()))
                        },
                      ),
                      SizedBox(
                       // height: screenHeight * (10 / 812),
                          height: 20.h,
                      ),
                      RectangleButton(
                        text: "Tamil",
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Successful()))
                        },
                      ),
                      SizedBox(
                       // height: screenHeight * (10 / 812),
                          height: 20.h,
                      ),
                      RectangleButton(
                        text: "Marathi",
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Successful()))
                        },
                      ),
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
                            "You can change the mode of language via menu bar in home page in future.",
                            softWrap: true,
                          ))
                        ],
                      )
                    ],
                  ),
                                ),
                              ),
                ))
          ],
        ),
      ),
    );
  }
}
