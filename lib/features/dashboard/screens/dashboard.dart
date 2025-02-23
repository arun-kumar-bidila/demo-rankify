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

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _page = 0;

  List<Widget> pages = [
    const Homescreen(),
    const Myexams(),
    const Latestranks(),
    const Community(),
    const Experts(),
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
        preferredSize: Size.fromHeight(60.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DashboardAppbar(),
          ],
        ),
      ),

      //DashboardbodyScreen
      body: pages[_page],

      //bottomnavigationbar
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _page,
        onTap: updatePage,
      ),
    );
  }
}
