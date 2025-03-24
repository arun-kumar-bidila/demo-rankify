import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/bottombar/tabs/community/screens/community.dart';
import 'package:rankify/features/bottombar/tabs/myexams/screens/myexamspage.dart';
import 'package:rankify/features/bottombar/tabs/rankifyexperts/experts.dart';
import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';

import 'package:rankify/features/dashboard/widgets/appbar.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/bottomappbar.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/appsc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/banks.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/others.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/rrb.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/ssc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/upsc.dart';
import 'package:rankify/features/dashboard/widgets/exambar.dart';
import 'package:rankify/utils/screen_size.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _page = 0;
  bool _isFullScreen = false;

  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages=[
     Ssc(onFullScreenChange: toggleFullScreen,),
    const Banks(),
    const Rrb(),
    const Upsc(),
    const Appsc(),
    const Others(),
    ];
  }

  void toggleFullScreen(bool isFullScreen) {
    setState(() {
      _isFullScreen = isFullScreen;
    });
  }

  void updatePage(int page) {
    setState(() {
      _page = page;
      _isFullScreen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          if(!_isFullScreen)...[
          DashboardAppbar(),
          Exambar(currentIndex: _page, onTap: updatePage),
          ],
          Flexible(child: pages[_page])
        ],
      ),
    )
        //  Container(
        //   height: double.infinity,
        //   child: Column(
        //     children: [
        //       Topbar(currentIndex: _page, onTap: updatePage),

        //        Expanded(
        //         child: Container(

        //           child:  pages[_page]
        //         ),
        //       )

        //     ],
        //   ),
        // ),
        );
  }
}
