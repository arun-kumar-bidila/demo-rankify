import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';

import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/genderinfo.dart';
import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/language.dart';
import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/mainsector.dart';
import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/personalinfo.dart';
import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/settings.dart';
import 'package:rankify/utils/screen_size.dart';

class Infoandsettings extends StatefulWidget {
  const Infoandsettings({super.key});

  @override
  State<Infoandsettings> createState() => _InfoandsettingsState();
}

class _InfoandsettingsState extends State<Infoandsettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
           
            left: Screensize.width * 0.05,
            right: Screensize.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:Screensize.height * 0.02,),
                padding: EdgeInsets.symmetric(vertical: Screensize.height*0.02),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: GlobalColors.primaryGradient),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: ClipOval(
                        child: CircleAvatar(
                            radius: Screensize.height * 0.04,
                            backgroundImage: AssetImage(
                              "assets/dp.jpg",
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: Screensize.height*0.01),
                      child: Text(
                        "Sreenivasulu",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      "Sreenuai@gmail.com",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Personalinfo(),
              Genderinfo(),
              Settings(),
              Mainsector(),
              LanguageInfo()
            ],
          ),
        ),
      )),
    );
  }
}
