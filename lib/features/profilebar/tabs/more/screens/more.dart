import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/moreoption.dart';
import 'package:rankify/utils/screen_size.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(
              top: Screensize.height * 0.05,
              left: Screensize.width * 0.05,
              right: Screensize.width * 0.05),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.05,
                    horizontal: Screensize.width * 0.1),
                decoration: BoxDecoration(
                    color: GlobalColors.buttonColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30.sp,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.2),
                      child: Text(
                        "More",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Screensize.height * 0.01),
                child: Column(
                  children: [
                    Moreoption(
                      optionImagePath: "icons/exclamation.png",
                      optionName: "About Us",
                      option: 0,
                    ),
                    Moreoption(
                      optionImagePath: "icons/exclamation.png",
                      optionName: "Community Guidelines",
                      option: 1,
                    ),
                    Moreoption(
                      optionImagePath: "icons/shield.png",
                      optionName: "Legality",
                      option: 2,
                    ),
                    Moreoption(
                      optionImagePath: "icons/exclamation.png",
                      optionName: "Terms and Conditions",
                      option: 3,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
