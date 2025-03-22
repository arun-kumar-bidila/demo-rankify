import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/rankifysupport/widgets/buildsupportfeature.dart';
import 'package:rankify/features/profilebar/tabs/rankifysupport/widgets/callsupport.dart';
import 'package:rankify/features/profilebar/tabs/rankifysupport/widgets/livechat.dart';
import 'package:rankify/utils/screen_size.dart';

class Supportmain extends StatefulWidget {
  const Supportmain({super.key});

  @override
  State<Supportmain> createState() => _SupportmainState();
}

class _SupportmainState extends State<Supportmain> {
  int _page = 1;
  List<Widget> pages = [
    Expanded(child: Livechat()),
    Expanded(child: Callsupport()),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
     double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    bool isKeyboardFullyClosed = keyboardHeight == 0;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible) {
          return SafeArea(
            child: Column(
              children: [
                if(isKeyboardFullyClosed)...[
                Container(
                  margin: EdgeInsets.only(
                    top: Screensize.height * 0.02,
                    left: Screensize.width * 0.05,
                    right: Screensize.width * 0.05,
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: Screensize.width * 0.05,
                      vertical: Screensize.height * 0.05),
                  decoration: BoxDecoration(
                      // color: GlobalColors.buttonColor,
                      gradient: GlobalColors.primaryGradient,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 30.r,
                        color: Colors.white,
                      ),
                      Text(
                        "Rankify 24/7 Support",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Screensize.height * 0.001,
                            horizontal: Screensize.width * 0.01),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Screensize.width * 0.01),
                              child: 
                              // Text(
                              //   "•",
                              //   style: TextStyle(
                              //     fontSize: 10.sp,
                              //     fontWeight: FontWeight.w600,
                              //     color: Colors.green,
                              //   ),
                              // ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: Screensize.width*0.008,
                                
                              )
                            ),
                            Text(
                              "Online",
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Screensize.width * 0.05,
                      vertical: Screensize.height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buildsupportfeature(
                          titleIcon: Icons.access_time,
                          title: "2 min",
                          subtitle: "Avg.time"),
                      Buildsupportfeature(
                          titleIcon: Icons.headset_mic,
                          title: "5",
                          subtitle: "Agent Online"),
                      Buildsupportfeature(
                          titleIcon: Icons.thumb_up,
                          title: "98%",
                          subtitle: "Satisfaction"),
                    ],
                  ),
                ),
                ],
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: Screensize.width * 0.05,
                      vertical: Screensize.height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          updatePage(0);
                        },
                        child: Text(
                          "Live Chat",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: _page == 0
                                ? GlobalColors.buttonColor
                                : GlobalColors.grey80,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          updatePage(1);
                        },
                        child: Text(
                          "Call Support",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: _page == 1
                                ? GlobalColors.buttonColor
                                : GlobalColors.grey80,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                pages[_page]
              ],
            ),
          );
        },
      ),
    );
  }
}
