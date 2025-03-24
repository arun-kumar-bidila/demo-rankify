import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Withdrawcashtitle extends StatefulWidget {
  const Withdrawcashtitle({super.key});

  @override
  State<Withdrawcashtitle> createState() => _WithdrawcashtitleState();
}

class _WithdrawcashtitleState extends State<Withdrawcashtitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Screensize.height * 0.02,
        bottom: Screensize.height*0.02
      ),
      padding: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.03,
          horizontal: Screensize.width * 0.05),
      decoration: BoxDecoration(
          gradient: GlobalColors.primaryGradient,
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30.r,
                color: Colors.white,
              )),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: Screensize.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Balance",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        "₹82",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.refresh,
            size: 30.r,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
