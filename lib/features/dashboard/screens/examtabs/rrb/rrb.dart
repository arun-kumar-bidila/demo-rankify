import 'package:flutter/material.dart';
import 'package:rankify/features/bottombar/bottombar.dart';
import 'package:rankify/features/bottombar/tabs/community/screens/community.dart';
import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';
import 'package:rankify/features/bottombar/tabs/myexams/screens/myexamspage.dart';
import 'package:rankify/features/bottombar/tabs/rankifyexperts/experts.dart';
import 'package:rankify/features/bottombar/tabs/ranks/ranks.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers.dart';


class Rrb extends StatefulWidget {
  const Rrb({super.key});

  @override
  State<Rrb> createState() => _RrbState();
}

class _RrbState extends State<Rrb> {
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