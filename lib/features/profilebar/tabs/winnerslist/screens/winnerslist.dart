import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';
import 'package:rankify/features/profilebar/tabs/winnerslist/tabs/sscwinnerslist/sscrankerspage.dart';

import 'package:rankify/features/profilebar/tabs/winnerslist/widgets/winnerslistexamtab.dart';
import 'package:rankify/utils/screen_size.dart';

class Winnerslist extends StatefulWidget {
  const Winnerslist({super.key});

  @override
  State<Winnerslist> createState() => _WinnerslistState();
}

class _WinnerslistState extends State<Winnerslist> {
  int _page = 0;
  List<Widget> pages = [
    Sscrankerspage(exam: "ssc",),
    Sscrankerspage(exam: "banks",),
    Sscrankerspage(exam: "rrb",),
    Sscrankerspage(exam: "upsc",),
    Sscrankerspage(exam: "appsc",),
    Sscrankerspage(exam: "ssc",),
    
  ];
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                  vertical: Variables.top, horizontal: Variables.side),
              padding: EdgeInsets.symmetric(vertical: Variables.top * 2),
              decoration: BoxDecoration(
                gradient: GlobalColors.primaryGradient,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Winners List",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: Screensize.height*0.002),
              padding: EdgeInsets.symmetric(vertical: Screensize.height*0.01),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Winnerslistexamtab(
                      examImagePath: "assets/ssc.png",
                      examTitle: "SSC",
                      examCount: "9.1K",
                      currentIndex: _page,
                      examIndex: 0,
                      onTap: updatePage,),
                  Winnerslistexamtab(
                      examImagePath: "assets/banks.png",
                      examTitle: "BANKS",
                      examCount: "9.1K",
                      currentIndex: _page,
                      examIndex: 1,
                      onTap: updatePage,),
                  Winnerslistexamtab(
                      examImagePath: "assets/rrb.png",
                      examTitle: "RRB",
                      examCount: "9.1K",
                      currentIndex: _page,
                      examIndex: 2,
                      onTap: updatePage,),
                  Winnerslistexamtab(
                      examImagePath: "assets/upsc.png",
                      examTitle: "UPSC",
                      examCount: "9.1K",
                      currentIndex: _page,
                      examIndex: 3,
                      onTap: updatePage,),
                       Winnerslistexamtab(
                      examImagePath: "assets/appsc.png",
                      examTitle: "APPSC",
                      examCount: "9.1K",
                      currentIndex: _page,
                      examIndex: 4,
                      onTap: updatePage,),
                  Winnerslistexamtab(
                      examImagePath: "icons/more.png",
                      examTitle: "OTHERS",
                      examCount: "9.1K",
                      currentIndex: _page,
                      examIndex: 5,
                      onTap: updatePage,)
                ],
              ),
            ),
            Flexible(child: pages[_page])
          ],
        ),
      ),
    );
  }
}
