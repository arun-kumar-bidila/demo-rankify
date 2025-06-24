import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Buildprofilefeature extends StatelessWidget {
  final int pos;
  final VoidCallback onTap;
  final String label;
  final String svgIcon;
  const Buildprofilefeature(
      {super.key,
      required this.svgIcon,
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
            vertical: 13,
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
                    EdgeInsets.only(left: 13,right: 20),
                child: SvgPicture.asset(
                  svgIcon,
                  height: 20,
                  width: 22,
                )
              ),
             
              Text(
                label,
                style: TextStyle(
                    fontSize: 16,
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
