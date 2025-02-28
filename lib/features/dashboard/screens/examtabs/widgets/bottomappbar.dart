import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:badges/badges.dart' as badges;

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      color: Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, "Home", "icons/home.png",34,26),
              _buildNavItem(1, "My Exams", "icons/exam.png",34,24),
              _buildNavItem(2, "Latest Ranks", "icons/trophy.png",34,24),
              _buildNavItem(3, "SSC Rankify Community", "icons/group.png",34,24),
              _buildNavItem(4, "Rankify Experts", "icons/customer-success.png",34,24),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, String label, String iconPath,double itemwidth,double itemheight) {
    return InkWell(
      onTap: () => widget.onTap(index),
      child: Container(
        padding: widget.currentIndex==index?EdgeInsets.only(top: 5.h):EdgeInsets.only(top: 10.h),
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
            color: widget.currentIndex == index
                ? GlobalColors.backgroundColor
                : Colors.white,
            borderRadius: widget.currentIndex == index
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(24.r),
                    bottomRight: Radius.circular(24.r))
                : null),
        child: Column(
          children: [
            if (index==3||index==4) ...[
              badges.Badge(
                badgeContent: Text(
                  "New",
                  style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.currentIndex == index
                          ? Colors.black
                          : Colors.white),
                ),
                position: badges.BadgePosition.topEnd(top: -8.h, end: -25.w),
                badgeStyle: badges.BadgeStyle(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                    shape: badges.BadgeShape.square,
                    borderRadius: BorderRadius.circular(4.r),
                    badgeColor: widget.currentIndex == index
                        ? Colors.white
                        : GlobalColors.buttonColor),
                child: Image.asset(
                  iconPath,
                  color: widget.currentIndex == index
                      ? GlobalColors.buttonColor
                      : Colors.black,
                  width: widget.currentIndex == index ? 25.w : 22.w,
                  height: widget.currentIndex == index ?25.h : 22.h,
                ),
              )
            ],
            if (index!=3&&index!=4)
              Image.asset(
                iconPath,
                color: widget.currentIndex == index
                    ? GlobalColors.buttonColor
                    : Colors.black,
                width: widget.currentIndex == index ? 25.w : 22.w,
                height: widget.currentIndex == index ?25.h : 22.h,
              ),
            SizedBox(height: 3.h,),
            Text(
              label,
              style: TextStyle(

                  fontSize:
                  //  widget.currentIndex == index ? 10 : 9,
                  7.sp,
                  
                  fontWeight: FontWeight.bold,
                  color: widget.currentIndex == index
                      ? GlobalColors.buttonColor
                      : Colors.black),
                      textAlign: TextAlign.center,
                      softWrap: true
                      ,
            )
          ],
        ),
      ),
    );
  }
}
