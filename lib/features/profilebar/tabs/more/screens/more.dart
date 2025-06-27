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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  decoration: BoxDecoration(
                      color: GlobalColors.buttonColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "More",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Opacity(
                        opacity: 0,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Moreoption(
                        optionImagePath: "assets/svg/info.svg",
                        optionName: "About Us",
                        option: 0,
                      ),
                      Moreoption(
                        optionImagePath: "assets/svg/doc.svg",
                        optionName: "Community Guidelines",
                        option: 1,
                      ),
                      Moreoption(
                        optionImagePath: "assets/svg/shield.svg",
                        optionName: "Legality",
                        option: 2,
                      ),
                      Moreoption(
                        optionImagePath: "assets/svg/terms.svg",
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
      ),
    );
  }
}
