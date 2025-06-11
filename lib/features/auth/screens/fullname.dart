import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/auth/screens/examcategory.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/common/widgets/custom_textfield.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/auth/widgets/toptitle.dart';
import 'package:rankify/utils/screen_size.dart';
import 'package:rankify/utils/userdata.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final nameFormKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  String selectedState = "";
  List<String> states = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal"
  ];

  //Dialog box to show the states as a list
  //On Clicking the particular state will change the state selection field

  void _buildStateInfoDialog() {
    String tempSelectedState = selectedState;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (BuildContext context,
              void Function(void Function()) setModelState) {
            return Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.02,
                    horizontal: Screensize.width * 0.05),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select State",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close_rounded,
                            size: 25.r,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: Screensize.height * 0.2,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              for (int i = 0; i < states.length; i++)
                                GestureDetector(
                                  onTap: () {
                                    setModelState(() {
                                      tempSelectedState = states[i];
                                    });
                                    setState(() {
                                      selectedState = states[i];
                                      UserData().state = selectedState;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: Screensize.height * 0.01),
                                    padding: EdgeInsets.symmetric(
                                        vertical: Screensize.height * .01,
                                        horizontal: Screensize.width * 0.05),
                                    decoration: BoxDecoration(
                                        border: states[i] == tempSelectedState
                                            ? Border.all(
                                                color: GlobalColors.buttonColor,
                                                width: 1)
                                            : null,
                                        color: GlobalColors.greyF5,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Row(
                                      children: [
                                        Text(
                                          states[i],
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500,
                                              color:
                                                  states[i] == tempSelectedState
                                                      ? GlobalColors.buttonColor
                                                      : GlobalColors.grey5D),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body: KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible) {
          return Padding(
            padding: EdgeInsets.only(top: 40.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (isKeyboardVisible) ...[
                  Image.asset(
                    "assets/R1.png",
                    height: 100.h,
                    width: 300.w,
                  ),
                ],
                if (!isKeyboardVisible) ...[
                  Image.asset(
                    "assets/R1.png",
                    height: 250.h,
                    width: 300.w,
                  ),
                ],
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
                        child: Column(
                          children: [
                            Form(
                              key: nameFormKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Toptitle(
                                      subtitle: "Please enter your full name",
                                      title: "Enter Your Full Name"),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  CustomTextfield(
                                    hintText: "Enter your Full Name",
                                    controller: nameController,
                                    keyboardType: TextInputType.name,
                                  )
                                ],
                              ),
                            ),

//Container field to take the input for the state selection

                            GestureDetector(
                              onTap: () {
                                _buildStateInfoDialog();
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(
                                        color: Color.fromRGBO(0, 0, 0, 0.3),
                                        width: 2)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      selectedState.isEmpty
                                          ? "Select Your State"
                                          : selectedState,
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color.fromRGBO(0, 0, 0, 0.3),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down_rounded,
                                      size: 20.r,
                                      color: Color.fromRGBO(0, 0, 0, 0.3),
                                    )
                                  ],
                                ),
                              ),
                            ),

//Continue button for details page

                            CustomButton(
                                text: "Continue",
                                onTap: () => {
                                      if (nameFormKey.currentState!.validate())
                                        {
                                          print(selectedState),
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Examcategory(
                                                        
                                                      )))
                                        }
                                    },
                                color: GlobalColors.buttonColor,
                                textColor: GlobalColors.textWhite),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
