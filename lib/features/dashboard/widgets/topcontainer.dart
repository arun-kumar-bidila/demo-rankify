import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/utils/screen_size.dart';

class Topcontainer extends StatelessWidget {
  const Topcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset(
        //   "icons/open-book.png",
        //   width: Screensize.width * 0.05,
        //   height: Screensize.height * 0.2,
        // ),
        SizedBox(
          width: Screensize.width * 0.015,
        ),
        Text(
          "SSC General Studies",
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
