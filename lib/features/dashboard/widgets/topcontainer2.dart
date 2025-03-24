import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Topcontainer2 extends StatefulWidget {
  final String examImage;
  final String examTitle;
  const Topcontainer2({super.key,required this.examTitle,required this.examImage});

  @override
  State<Topcontainer2> createState() => _Topcontainer2State();
}

class _Topcontainer2State extends State<Topcontainer2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // // width: double.infinity,
      // height: 20,
      padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 2,
                spreadRadius: 0,
                offset: Offset(0, 1))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.examImage,
            height: Screensize.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.03),
            child: Text(
              widget.examTitle,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: GlobalColors.grey25),
            ),
          )
        ],
      ),
    );
  }
}
