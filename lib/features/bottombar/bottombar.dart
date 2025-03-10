import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Bottombar extends StatefulWidget {
  final currentIndex;
  final Function(int) onTap;
  const Bottombar({super.key, required this.currentIndex, required this.onTap});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.02),
      // height: Screensize.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, -1),
            blurRadius: 8
          )
        ]

      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildBottomBarButton(0, "icons/home.png", "Home"),
          buildBottomBarButton(1, "icons/exam.png", "MyExams"),
          buildBottomBarButton(2, "icons/trophy.png", "Ranks"),
          buildBottomBarButton(3, "icons/group.png", "Community"),
          buildBottomBarButton(4, "icons/gear.png", "Experts"),
        ],
      ),
    );
  }

  Widget buildBottomBarButton(int index, String iconPath, String label) {
    return InkWell(
      onTap: () => widget.onTap(index),
      child:  Container(
              
              child: Column(
                children: [
                  Image.asset(
                    iconPath,
                    height: Screensize.height * 0.025,
                    color: index == widget.currentIndex
                        ? GlobalColors.buttonColor
                        : Colors.black,
                  ),
                  SizedBox(
                    height: Screensize.height * 0.005,
                  ),
                  Text(
                   label,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: index == widget.currentIndex
                          ? GlobalColors.buttonColor
                          : Colors.black,
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
