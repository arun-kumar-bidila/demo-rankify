import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/auth/screens/examcategory.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/common/widgets/custom_textfield.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/auth/screens/stateDistrict.dart';
import 'package:rankify/features/auth/widgets/toptitle.dart';
import 'package:rankify/utils/screen_size.dart';
import 'package:rankify/utils/userdata.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final nameFormKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController refferalController = TextEditingController();

  bool showRefferal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body: KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/R1.png",
                height: 250.h,
                width: 300.w,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(24),
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 10,
                      children: [
                        Form(
                          key: nameFormKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Toptitle(
                                subtitle: "Please enter your full name",
                                title: "Enter Your Full Name",
                              ),
                              CustomTextfield(
                                hintText: "Enter your Full Name",
                                controller: nameController,
                                keyboardType: TextInputType.name,
                              ),
                              CustomTextfield(
                                hintText: "Choose a unique username",
                                controller: usernameController,
                                onFieldSubmitted: (_) => (),
                                keyboardType: TextInputType.name,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      // minimumSize: Size(double.infinity, 50.h),
                                      backgroundColor: GlobalColors.buttonColor,
                                      foregroundColor:
                                          GlobalColors.backgroundColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'Check',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  // ElevatedButton(
                                  //   style: ElevatedButton.styleFrom(
                                  //     shape: StadiumBorder()
                                  //   ),
                                  //   onPressed: () {
                                  //     // _checkUsername();
                                  //   },
                                  //   child: Text('Check'),
                                  // ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: GlobalColors.buttonColor,
                                      value: showRefferal,
                                      onChanged: (value) {
                                        setState(() {
                                          showRefferal = !showRefferal;
                                        });
                                      }),
                                  Text(
                                    'Have a refferal code',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  
                                  )
                                ],
                              ),
                              if (showRefferal) ...[
                                CustomTextfield(
                                    hintText: 'Enter Refferal code',
                                    controller: refferalController,
                                    keyboardType: TextInputType.text)
                              ]
                            ],
                          ),
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     _buildStateInfoDialog();
                        //   },
                        //   child: Container(
                        //     margin: EdgeInsets.symmetric(vertical: 20),
                        //     padding: EdgeInsets.symmetric(
                        //       vertical: 15,
                        //       horizontal: 10,
                        //     ),
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(10),
                        //       border: Border.all(
                        //         color: Color.fromRGBO(0, 0, 0, 0.3),
                        //         width: 1.5,
                        //       ),
                        //     ),
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         Text(
                        //           selectedState.isEmpty
                        //               ? "Select Your State"
                        //               : selectedState,
                        //           style: TextStyle(
                        //             fontSize: 16,
                        //             color: Color.fromRGBO(0, 0, 0, 0.3),
                        //             fontWeight: FontWeight.w500,
                        //           ),
                        //         ),
                        //         Icon(
                        //           Icons.arrow_drop_down_rounded,
                        //           color: Color.fromRGBO(0, 0, 0, 0.3),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),

                        CustomButton(
                          text: "Continue",
                          onTap: () {
                            if (nameFormKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  //builder: (context) => Examcategory(),
                                  builder: (context) => StateDistrict(),
                                ),
                              );
                            }
                          },
                          color: GlobalColors.buttonColor,
                          textColor: GlobalColors.textWhite,
                        ),
                      ],
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
