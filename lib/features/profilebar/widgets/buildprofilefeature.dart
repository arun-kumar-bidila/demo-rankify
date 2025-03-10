import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/utils/screen_size.dart';

class Buildprofilefeature extends StatelessWidget {
  final int pos;
  final VoidCallback onTap;
  final String label;
  final String iconPath;
  const Buildprofilefeature({super.key,required this.iconPath,required this.label,required this.onTap,required this.pos});

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
                    color: Colors.black,
                    width: Screensize.height * 0.0001,
                    // width: 0.2
                  ),
                )
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: Screensize.height * 0.01,
              horizontal: Screensize.width * 0.03),
          child: Row(
            children: [
              Image.asset(
                iconPath,
                // width: Screensize.width * 0.04,
                height: Screensize.height * 0.025,
              ),
              SizedBox(
                width: Screensize.width * 0.05,
              ),
              Text(
                label,
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
