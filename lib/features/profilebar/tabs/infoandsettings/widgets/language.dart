import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class LanguageInfo extends StatefulWidget {
  const LanguageInfo({super.key});

  @override
  State<LanguageInfo> createState() => _LanguageInfoState();
}

class _LanguageInfoState extends State<LanguageInfo> {
  List<String> languages = [
    "English",
    "हिंदी",
    "తెలుగు",
    "தமிழ்",
    "മലയാളം",
    "ಕನ್ನಡ "
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _buildLanguageInfoDialog();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.02,
        ),
        padding: EdgeInsets.symmetric(
            vertical: Screensize.height * 0.02,
            horizontal: Screensize.width * 0.05),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Screensize.width * 0.05),
              child: Icon(
                Icons.language,
                color: Colors.black,
                size: 20.r,
              ),
            ),
            Expanded(
              child: Text(
                "Language",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: GlobalColors.grey19),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Screensize.width * 0.02),
              child: Text(
                "English",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: GlobalColors.buttonColor),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
              size: 15.r,
            ),
          ],
        ),
      ),
    );
  }

  void _buildLanguageInfoDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
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
                        "Select Language",
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
                  for (int i = 0; i < languages.length; i++)
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: Screensize.height * 0.01),
                      padding: EdgeInsets.symmetric(
                          vertical: Screensize.height * .01,
                         ),
                      decoration: BoxDecoration(
                          color: GlobalColors.greyF5,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Screensize.width * 0.05),
                            child: Image.asset(
                              "icons/india.png",
                              height: Screensize.height * 0.02,
                            ),
                          ),
                          Text(
                            languages[i],
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: GlobalColors.grey5D),
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
          );
        });
  }
}
