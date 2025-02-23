import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';

class CustomIcon extends StatelessWidget {
  final String imagePath;
  const CustomIcon({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
       imagePath,
        width: 35.w,
        height: 35.h,
        color: GlobalColors.buttonColor,
      
    );
  }
}
