import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Buildprofilefeature extends StatelessWidget {
  final int pos;
  final VoidCallback onTap;
  final String label;
  final IconData icon;
  const Buildprofilefeature(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap,
      required this.pos});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.amber,
          border: pos == 0
              ? Border(
                  bottom: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1,
                    // width: 0.2
                  ),
                )
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: Screensize.height * 0.01,
          ),
          child: Row(
            children: [
              // Image.asset(
              //   iconPath,
              //   // width: Screensize.width * 0.04,
              //   height: Screensize.height * 0.025,
              // ),
              Padding(
                padding:
                    EdgeInsets.only(left: Screensize.width * 0.03,right: Screensize.width*0.06),
                child: Icon(
                  icon,
                  size: 25.r,
                  color: Colors.black,
                ),
              ),
             
              Text(
                label,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: GlobalColors.grey19),
              )
            ],
          ),
        ),
      ),
    );
  }
}
