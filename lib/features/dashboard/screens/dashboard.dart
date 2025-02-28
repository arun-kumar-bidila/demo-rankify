import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/home/screens/community.dart';
import 'package:rankify/features/home/screens/experts.dart';
import 'package:rankify/features/home/screens/homescreen.dart';
import 'package:rankify/features/home/screens/latestranks.dart';
import 'package:rankify/features/home/screens/myexams.dart';
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

      body: Column(children: [

        Topbar(currentIndex: _page, onTap: updatePage),
        pages[_page]
      ]),

      // //bottomnavigationbar
      // bottomNavigationBar: CustomBottomNavBar(
      //   currentIndex: _page,
      //   onTap: updatePage,
      // ),
    );
  }
}
