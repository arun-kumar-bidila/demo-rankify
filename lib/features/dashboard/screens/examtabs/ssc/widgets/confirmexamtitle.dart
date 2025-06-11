import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Confirmexamtitle extends StatefulWidget {
  const Confirmexamtitle({super.key});

  @override
  State<Confirmexamtitle> createState() => _ConfirmexamtitleState();
}

class _ConfirmexamtitleState extends State<Confirmexamtitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: Screensize.height * 0.02, bottom: Screensize.height * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/R1.png",
                height: Screensize.height * 0.04,
              )
            ],
          ),
        ),
        Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 25.r,
                color: Colors.black,
              ),
            ),
            Center(
              child: Text(
                "Confirm Exam Details",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: GlobalColors.grey25),
              ),
            )
          ],
        ),

        //gradient container
        Padding(
          padding: EdgeInsets.only(
            top: Screensize.height * 0.03,
            // bottom: Screensize.height * 0.04,
          ),
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(vertical: Screensize.height * 0.02),
                decoration: BoxDecoration(
                    gradient: GlobalColors.primaryGradient,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SSC",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Screensize.height * 0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "STAFF SELECTION COMMISSION",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(vertical: Screensize.height * 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r)),
                  color: GlobalColors.orange1A,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Subject: GENERAL STUDIES",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
