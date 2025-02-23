import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/dashboard/screens/dashboard.dart';
// import 'package:rankify/utils/screen_size.dart';

class Successful extends StatefulWidget {
  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  final String coins = '10';

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.only(top: 40.r),
        child: Column(
          children: [
            Image.asset(
              'assets/R1.png',
              // width: screen.Width * 0.5, height: screen.Height * 0.2
              height: 300.h,
              width: 300.w,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.r),
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
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/check.png',
                            // width: screen.Width * 0.3, height: screen.Height * 0.3
                            height: 94.h,
                            width: 94.w,
                          ),
                          SizedBox(
                            // height: screen.Height * (5 / 812),
                            height: 25.h,
                          ),
                          Text(
                            "You have successfully registered",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            // height: screen.Height * (5 / 812),
                            height: 40.h,
                          ),
                          Column(children: [
                            Image.asset(
                              'assets/coin.png',
                              // width: 50,
                              // height: 50,
                              width: 39.w,
                              height: 39.h,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text("Welcome coins $coins",
                                style: TextStyle(fontSize: 16.sp)),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
