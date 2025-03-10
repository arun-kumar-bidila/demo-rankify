import 'package:flutter/material.dart';
import 'package:rankify/features/bottombar/bottombar.dart';
import 'package:rankify/features/bottombar/tabs/community/community.dart';
import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';
import 'package:rankify/features/bottombar/tabs/myexams/screens/myexamspage.dart';
import 'package:rankify/features/bottombar/tabs/rankifyexperts/experts.dart';
import 'package:rankify/features/bottombar/tabs/ranks/ranks.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/upcomingexams.dart';

class Upsc extends StatefulWidget {
  const Upsc({super.key});

  @override
  State<Upsc> createState() => _RrbState();
}

class _RrbState extends State<Upsc> {
int _page = 0;

  List<Widget> pages = [
    Homescreen(),
    Myexamspage(),
    Experts(),
    Community(),
    Ranks()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      // height: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: pages[_page],
            ),
          ),
          Container(
            child: Bottombar(currentIndex: _page,onTap: updatePage,),
          ),
        ],
      ),
    );
  }
}