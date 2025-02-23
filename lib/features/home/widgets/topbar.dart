import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Topbar extends StatefulWidget {
  final currentIndex;
  final Function(int) onTap;
  const Topbar({super.key, required this.currentIndex, required this.onTap});

  @override
  State<Topbar> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(-2, 5),
            // spreadRadius: 1
          )
        ]
      ),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildHomeItem(0, "SSC", "icons/open-book.png"),
              _buildHomeItem(1, "BANKS", "icons/museum.png"),
              _buildHomeItem(2, "RRB", "icons/railway-station.png"),
              _buildHomeItem(3, "UPSC", "icons/globe.png"),
              _buildHomeItem(4, "APPSC", "icons/badge.png"),
              _buildHomeItem(5, "OTHERS", "icons/more.png"),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildHomeItem(int index, String label, String iconPath) {
    return InkWell(
      onTap: () => widget.onTap(index),
      child: Container(
        child: Column(
          children: [
            Image.asset(
              iconPath,
              width: 17.w,
              height: 17.h,
              color: widget.currentIndex == index ? Colors.pink : Colors.black,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              label,
              style: TextStyle(
                  fontSize: 10.sp,
                  color: widget.currentIndex == index
                      ? Colors.pink
                      : Colors.black,
                      fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
