import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/bottombar/tabs/community/community.dart';
import 'package:rankify/features/bottombar/tabs/myexams/screens/myexamspage.dart';
import 'package:rankify/features/bottombar/tabs/rankifyexperts/experts.dart';
import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';
// import 'package:rankify/features/bottombar/tabs/screens/latestranks.dart';
// import 'package:rankify/features/home/screens/myexams.dart';
import 'package:rankify/features/dashboard/widgets/appbar.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/bottomappbar.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/appsc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/banks.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/others.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/rrb.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/ssc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/upsc.dart';
import 'package:rankify/features/dashboard/widgets/topbar.dart';
import 'package:rankify/utils/screen_size.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _page = 0;

  List<Widget> pages = [
    const Ssc(),
    const Banks(),
    const Rrb(),
    const Upsc(),
    const Appsc(),
    const Others(),
  ];
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, Screensize.height * 0.06),
        child: DashboardAppbar(),
      ),

      //DashboardbodyScreen

      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Topbar(currentIndex: _page, onTap: updatePage),

            Expanded(
              child: Container(
                height: double.infinity,
                // color: Colors.amber,
                child: Myexamspage(),
              ),
            )
            // pages[_page]
          ],
        ),
      ),
    );
  }
}
