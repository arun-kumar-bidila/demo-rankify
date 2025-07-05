import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';

import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/genderinfo.dart';
import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/language.dart';
import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/mainsector.dart';
import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/personalinfo.dart';
import 'package:rankify/features/profilebar/tabs/infoandsettings/widgets/settings.dart';
// import 'package:rankify/utils/screen_size.dart';

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
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:20,),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: GlobalColors.primaryGradient),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 2)),
                                child: ClipOval(
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                      "assets/dp.jpg",
                                    ))),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  "Sreenivasulu",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                              Text(
                                "Sreenuai@gmail.com",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
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
