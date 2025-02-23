import 'package:flutter/material.dart';

import 'dart:async';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/auth/widgets/otpinput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/auth/widgets/toptitle.dart';


class OTP extends StatefulWidget {
  final String? phonenumber;
  final String? email;
  final String verificationId;

  const OTP({super.key, this.phonenumber, this.email,required this.verificationId});

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  int _remainingSeconds = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  void _resendOTP() {
    setState(() {
      _remainingSeconds = 60;
    });
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String maskedEmail = "Invalid email";
    if (widget.email != null) {
      final emailparts = widget.email!.split('@');
      int halfLength = ((emailparts[0].length) / 2).round();
      String firstPart = emailparts[0].substring(0, halfLength);
      String secondPart = "*" * (emailparts[0].length - halfLength);
      maskedEmail = "$firstPart$secondPart@${emailparts[1]}";
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "Verification",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset( "assets/R1.png", height: 250.h, width: 300.w),
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
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.black38,
                    //       blurRadius: 2,
                    //       offset: Offset(4, 0))
                    // ],
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Toptitle(
                                      subtitle:
                                          "Please enter the otp code just sent to ",
                                      title: "Enter your Verification Code"),
                          // Text(
                          //   "Enter your Verification Code",
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold, fontSize: 16.sp),
                          // ),
                          // SizedBox(height: 10.h),
                          // Text(
                          //   "Please enter the otp code just sent to ",
                          //   style: TextStyle(
                          //     fontSize: 13.sp,
                          //   ),
                          // ),
                          SizedBox(height: 10.h),
                          if (widget.phonenumber != null) ...[
                            Text(
                              "+91 ******${widget.phonenumber!.substring(widget.phonenumber!.length - 4)}",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: GlobalColors.buttonColor),
                            ),
                          ],
                          if (widget.phonenumber == null &&
                              widget.email != null) ...[
                            Text(
                              maskedEmail,
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: GlobalColors.buttonColor),
                            ),
                          ],
                          SizedBox(height: 25.h),

                          OTPInput(verificationId: widget.verificationId),
                          SizedBox(height: 25.h),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn't receive the OTP? ",
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                  GestureDetector(
                                    onTap: _resendOTP,
                                    child: Text(
                                      _remainingSeconds > 0
                                          ? "Resend in $_remainingSeconds seconds"
                                          : "Resend now",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
