import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/auth/screens/otp.dart';
import 'package:rankify/features/auth/services/authservice.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/common/widgets/custom_text_button.dart';
import 'package:rankify/common/widgets/custom_textfield.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/auth/widgets/toptitle.dart';

class Phonenumber extends StatelessWidget {
  const Phonenumber({super.key});

  @override
  Widget build(BuildContext context) {
    // final screen = ScreenSize(context);
    final phoneSignUpFormKey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
        return Padding(
          padding: EdgeInsets.only(top: 40.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // if (!isKeyboardVisible) ...[
              SizedBox(
                // height: screen.Height * 0.4,
                // width: screen.Width * 0.8,
                height: 250.h,
                width: 300.w,
                child: AnotherCarousel(
                  images: const [
                    Image(
                        image: AssetImage("assets/R1.png"),
                        fit: BoxFit.contain),
                    Image(
                        image: AssetImage("assets/R1.png"),
                        fit: BoxFit.contain),
                    Image(
                        image: AssetImage("assets/R1.png"),
                        fit: BoxFit.contain),
                  ],
                  dotSize: 4,
                  dotIncreasedColor: GlobalColors.buttonColor,
                  dotColor: Colors.grey,
                  indicatorBgPadding: 2.r,
                  dotBgColor: GlobalColors.backgroundColor,
                  // showIndicator: false,
                  dotPosition: DotPosition.bottomCenter,
                ),
              ),
              // ],
              // if (isKeyboardVisible) ...[
              //   Image.asset(
              //     "assets/R1.png",
              //     // width: screen.Width * 0.5,
              //     // height: screen.Height * 0.2,
              //     width: 300.w,
              //     height: 100.h,
              //   )
              // ],
              Expanded(
                child: Container(
                  // height: screenHeight * 0.5,
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
                      child: Column(
                        children: [
                          Form(
                              key: phoneSignUpFormKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Toptitle(
                                      subtitle:
                                          "Please enter your mobile number",
                                      title: "Enter Your Mobile Number"),
                                  SizedBox(
                                    // height: screen.Height * (25 / 812),
                                    height: 25.h,
                                  ),
                                  CustomTextfield(
                                    hintText:
                                        "Enter your 10 digit Mobile Number",
                                    // label: "Mobile Number",
                                    controller: phoneController,
                                    keyboardType: TextInputType.phone,
                                  )
                                ],
                              )),
                          SizedBox(
                            // height: screen.Height * (20 / 812),
                            height: 25.h,
                          ),
                          CustomButton(
                              text: "Continue",
                              onTap: () => {
                                    if (phoneSignUpFormKey.currentState!
                                        .validate())
                                      {
                                        FirebaseAuth.instance.verifyPhoneNumber(
                                          phoneNumber: phoneController.text,
                                          verificationCompleted:
                                              (phoneAuthCredential) {},
                                          verificationFailed: (error) {
                                            // log(error.toString());
                                            print("error in phonesignup");
                                          },
                                          codeSent: (verificationId,
                                              forceResendingId) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => OTP(
                                                  phonenumber:
                                                      phoneController.text,
                                                  verificationId:
                                                      verificationId,
                                                ),
                                              ),
                                            );
                                          },
                                          codeAutoRetrievalTimeout:
                                              (verificationId) {
                                            // log("Auto retrievel timeout");
                                            print("Autho retrievela timeout");
                                          },
                                        )
                                      }
                                  },
                              color: GlobalColors.buttonColor,
                              textColor: GlobalColors.textWhite),
                          SizedBox(
                            // height: 15,
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  color: GlobalColors.textBlack
                                      .withOpacity(0.4),
                                  thickness: 1.r,
                                  endIndent: 10.r,
                                ),
                              ),
                              Text(
                                "OR",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: GlobalColors.textBlack
                                      .withOpacity(0.4),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: GlobalColors.textBlack
                                      .withOpacity(0.4),
                                  thickness: 1,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                              )
                            ],
                          ),
                          
                          SizedBox(
                            // height: 15,
                            height: 15.h,
                          ),
                          InkWell(
                            onTap: () async {
                              UserCredential? userCredential =
                                  await Authservice.signInWithGoogle();
                              if (userCredential != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OTP(
                                              email: userCredential.user?.email,
                                              verificationId: "",
                                            )));
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(8.r),
                              // width: screen.Width * 0.8,
                              width: double.infinity,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                  Image.asset(
                                    "icons/google.png",
                                    // width: screen.Width * (50 / 812),
                                    // height: screen.Height * (50 / 812),
                                    width: 50.w,
                                    height: 20.h,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Continue with google",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "By continuing you accept our",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomTextButton(
                                      text: "Terms of Service",
                                      onTap: () {},
                                      color: GlobalColors.buttonColor),
                                  Text("and",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  CustomTextButton(
                                      text: "Privacy Policy",
                                      onTap: () {},
                                      color: GlobalColors.buttonColor)
                                ],
                              ),
                              // SizedBox(
                              //   height: 20.h,
                              // ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
