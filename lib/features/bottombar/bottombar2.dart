import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';
import 'package:rankify/features/bottombar/tabs/community/screens/community.dart';
import 'package:rankify/features/bottombar/tabs/myexams/screens/myexamspage.dart';
import 'package:rankify/features/dashboard/screens/dashboard.dart';

class BottomBar2 extends StatefulWidget {
  @override
  _BottomBar2State createState() => _BottomBar2State();
}

class _BottomBar2State extends State<BottomBar2> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Dashboard(),
    Myexamspage(),
    Center(child: Text("Ranks Page", style: TextStyle(fontSize: 22))),
    Community(),
    Center(child: Text("Experts Page", style: TextStyle(fontSize: 22))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _pages[_selectedIndex],
            if (_selectedIndex != 3)
              Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Material(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Variables.columnspace,
                            horizontal: Variables.rowwidgetspace),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildNavItem(Icons.home, "Home", 0),
                            buildNavItem(Icons.list, "My Exams", 1),
                            buildNavItem(Icons.emoji_events, "Ranks", 2),
                            buildNavItem(Icons.group, "Community", 3),
                            buildNavItem(Icons.settings, "Experts", 4),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -28,
                      left: _selectedIndex == 0
                          ? MediaQuery.of(context).size.width /
                                  5 *
                                  _selectedIndex +
                              10
                          : _selectedIndex == 4
                          ? MediaQuery.of(context).size.width /
                                  5 *
                                  _selectedIndex -
                              10:MediaQuery.of(context).size.width /
                              5 *
                              _selectedIndex,
                     
                      
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Column(
                            spacing: Variables.halfcolumn,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                getIconForIndex(_selectedIndex),
                                color: GlobalColors.buttonColor,
                                size: 25.r,
                              ),
                              Text(
                                getLabelForIndex(_selectedIndex),
                                style: TextStyle(
                                    color: GlobalColors.buttonColor,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.transparent : GlobalColors.grey25,
            size: 25.r,
          ),
          Text(
            label,
            style: TextStyle(
                color: isSelected ? Colors.transparent : GlobalColors.grey25,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  IconData getIconForIndex(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.list;
      case 2:
        return Icons.emoji_events;
      case 3:
        return Icons.group;
      case 4:
        return Icons.settings;
      default:
        return Icons.home;
    }
  }

  String getLabelForIndex(int index) {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "My Exams";
      case 2:
        return "Ranks";
      case 3:
        return "Community";
      case 4:
        return "Experts";
      default:
        return "";
    }
  }
}
