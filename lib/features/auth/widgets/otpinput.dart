import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/auth/screens/fullname.dart';

class OTPInput extends StatefulWidget {
  final String verificationId;
  OTPInput({required this.verificationId});
  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  final int otpLength = 6; // Number of OTP digits
  List<TextEditingController> otpControllers = [];
  List<FocusNode> focusNodes = [];

  @override
  void initState() {
    super.initState();
    otpControllers =
        List.generate(otpLength, (index) => TextEditingController());
    focusNodes = List.generate(otpLength, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  /// Builds OTP Input Fields
  Widget _buildOTPFields(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(otpLength, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8.r),
          width: 34.w,
          height: 40.h,
          child: RawKeyboardListener(
            focusNode: FocusNode(),
            onKey: (event) {
              if (event is RawKeyDownEvent &&
                  event.logicalKey == LogicalKeyboardKey.backspace &&
                  otpControllers[index].text.isEmpty) {
                if (index > 0) {
                  FocusScope.of(context)
                      .requestFocus(focusNodes[index - 1]); // Move back
                }
              }
            },
            child: TextFormField(
              controller: otpControllers[index],
              focusNode: focusNodes[index],
              onChanged: (value) {
                if (value.isNotEmpty) {
                  if (index < otpLength - 1) {
                    FocusScope.of(context).requestFocus(
                        focusNodes[index + 1]); // Move to next field
                  } else {
                    FocusScope.of(context)
                        .unfocus(); // Hide keyboard when last digit entered
                  }
                }
              },
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
        );
      }),
    );
  }

  /// Retrieves the full OTP as a single string
  String getOTP() {
    return otpControllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildOTPFields(MediaQuery.of(context).size.width),
        SizedBox(height: 30.h),
        CustomButton(
            text: "Submit",
            onTap: () async {
              try {
                String otp = getOTP();
                print("Entered OTP: $otp");
                final cred = PhoneAuthProvider.credential(
                    verificationId: widget.verificationId, smsCode: otp);
                await FirebaseAuth.instance.signInWithCredential(cred);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              } catch (e) {
                print("error occured in otpinput");
              }
            },
            color: GlobalColors.buttonColor,
            textColor: GlobalColors.textWhite),
      ],
    );
  }
}
