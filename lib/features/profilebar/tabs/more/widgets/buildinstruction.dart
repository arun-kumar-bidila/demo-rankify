import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/utils/screen_size.dart';

class Buildinstruction extends StatelessWidget {
  final String text;
  const Buildinstruction({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: Screensize.width*0.02),
          child: Text(
            "•",
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        )
      ],
    );
  }
}
