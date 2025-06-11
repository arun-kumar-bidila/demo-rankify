import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/bottombar/tabs/myexams/widgets/completedexam.dart';
import 'package:rankify/features/bottombar/tabs/myexams/widgets/liveexamcard.dart';
import 'package:rankify/features/bottombar/tabs/myexams/widgets/upcomingmyexams.dart';
import 'package:rankify/features/dashboard/screens/examtabs/appsc/appsc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/banks/banks.dart';
import 'package:rankify/features/dashboard/screens/examtabs/others/others.dart';
import 'package:rankify/features/dashboard/screens/examtabs/rrb/rrb.dart';
import 'package:rankify/features/dashboard/screens/examtabs/ssc/ssc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/upsc/upsc.dart';
import 'package:rankify/features/dashboard/widgets/appbar.dart';
import 'package:rankify/features/dashboard/widgets/exambar.dart';

import 'package:rankify/utils/screen_size.dart';

class Myexamspage extends StatefulWidget {
  const Myexamspage({super.key});

  @override
  State<Myexamspage> createState() => _MyexamspageState();
}

class _MyexamspageState extends State<Myexamspage> {
  int _Exampage = 0;
  bool _isFullScreen = false;

  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      Ssc(
        onFullScreenChange: toggleFullScreen,
      ),
      Banks(
        onFullScreenChange: toggleFullScreen,
      ),
      Rrb(
        onFullScreenChange: toggleFullScreen,
      ),
      Upsc(
        onFullScreenChange: toggleFullScreen,
      ),
      Appsc(
        onFullScreenChange: toggleFullScreen,
      ),
      Others(
        onFullScreenChange: toggleFullScreen,
      ),
    ];
  }

  void toggleFullScreen(bool isFullScreen) {
    setState(() {
      _isFullScreen = isFullScreen;
    });
  }

  void updateExamPage(int page) {
    setState(() {
      _Exampage = page;
      _isFullScreen = false;
    });
  }

  int _page = 0;

  List<Widget> MyExam = [
    // Buildexamcard(layoutheight: double.infinity),
    Upcomingmyexams(),
    Liveexamcard(),
    Completedexam()
  ];

  void updatepage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DashboardAppbar(),
          Exambar(currentIndex: _Exampage, onTap: updateExamPage),
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 8,
                  offset: Offset(-2, 5))
            ]),
            padding: EdgeInsets.only(
              top: Screensize.height * 0.01,
              bottom: Screensize.height * 0.01,
            ),
            margin: EdgeInsets.only(
              top: Screensize.height * 0.015,
              bottom: Screensize.height * 0.015,
            ),
            width: double.infinity,
            // height: Screensize.height * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildMyExamItem(0, "Upcoming"),
                _buildMyExamItem(1, "Live"),
                _buildMyExamItem(2, "Completed")
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: Screensize.width * 0.02,
                right: Screensize.width * 0.02,
                // bottom: Screensize.height * 0.01
              ),
              child: MyExam[_page],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMyExamItem(int index, String itemlabel) {
    return InkWell(
      onTap: () => updatepage(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            itemlabel,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: _page == index ? GlobalColors.buttonColor : Colors.black,
            ),
          ),
          SizedBox(
            height: Screensize.height * 0.012,
          ),
          if (_page == index) ...[
            Container(
              width: Screensize.width * 0.15,
              height: Screensize.height * 0.005,
              decoration: BoxDecoration(
                  color: GlobalColors.buttonColor,
                  borderRadius: BorderRadius.circular(5.r)),
            )
          ],
        ],
      ),
    );
  }
}
