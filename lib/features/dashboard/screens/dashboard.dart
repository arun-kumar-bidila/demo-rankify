import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/dashboard/screens/community.dart';
import 'package:rankify/features/dashboard/screens/experts.dart';
import 'package:rankify/features/home/screens/homescreen.dart';
import 'package:rankify/features/dashboard/screens/latestranks.dart';
import 'package:rankify/features/dashboard/screens/myexams.dart';
import 'package:rankify/features/dashboard/widgets/appbar.dart';
import 'package:rankify/features/dashboard/widgets/bottomappbar.dart';
import 'package:rankify/features/home/tabs/screens/appsc.dart';
import 'package:rankify/features/home/tabs/screens/banks.dart';
import 'package:rankify/features/home/tabs/screens/others.dart';
import 'package:rankify/features/home/tabs/screens/rrb.dart';
import 'package:rankify/features/home/tabs/screens/ssc.dart';
import 'package:rankify/features/home/tabs/screens/upsc.dart';
import 'package:rankify/features/home/widgets/topbar.dart';
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

      body: Column(children: [

        Topbar(currentIndex: _page, onTap: updatePage),
        // pages[_page]
      ]),

      // //bottomnavigationbar
      // bottomNavigationBar: CustomBottomNavBar(
      //   currentIndex: _page,
      //   onTap: updatePage,
      // ),
    );
  }
}
