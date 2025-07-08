import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Genderinfo extends StatefulWidget {
  const Genderinfo({super.key});

  @override
  State<Genderinfo> createState() => _GenderinfoState();
}

class _GenderinfoState extends State<Genderinfo> {
  List<String> genders = ["Male", "Female", "Others"];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Screensize.width * 0.05,
          vertical: Screensize.height * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
            child: Text(
              "Gender",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: GlobalColors.grey19),
            ),
          ),
          GestureDetector(
            onTap: () {
              _buildGenderInfoDialog();
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
              padding: EdgeInsets.symmetric(
                  horizontal: Screensize.width * 0.05,
                  vertical: Screensize.height * 0.01),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: GlobalColors.greyC6, width: 1)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: Screensize.width * 0.05),
                    child: Image.asset(
                      "icons/genders.png",
                      height: Screensize.height * 0.03,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Select Gender",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: GlobalColors.grey19,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 20.r,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _buildGenderInfoDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
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
                        "Select Gender",
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
                  for (int i = 0; i < genders.length; i++)
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: Screensize.height * 0.01),
                      padding: EdgeInsets.symmetric(
                          vertical: Screensize.height * .01,
                          horizontal: Screensize.width * 0.05),
                      decoration: BoxDecoration(
                          color: GlobalColors.greyF5,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        children: [
                          Text(
                            genders[i],
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: GlobalColors.grey5D),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          );
        });
  }
}
