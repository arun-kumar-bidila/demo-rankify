import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Buildsupportfeature extends StatelessWidget {
   final IconData titleIcon;
  final String title;
  final String subtitle;
  const Buildsupportfeature({super.key,required this.titleIcon,required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: Screensize.height * 0.005),
          child: Icon(
            titleIcon,
            size: 30.r,
            color: GlobalColors.buttonColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.005),
          child: Text(
            title,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
        ),
        Text(subtitle,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
