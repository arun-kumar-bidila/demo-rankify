import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/addcash/screens/addcash.dart';
import 'package:rankify/features/profilebar/tabs/withdraw/screens/withdrawcash.dart';
import 'package:rankify/utils/screen_size.dart';

class Mybalance extends StatefulWidget {
  const Mybalance({super.key});

  @override
  State<Mybalance> createState() => _MybalanceState();
}

class _MybalanceState extends State<Mybalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Screensize.height * 0.02,
        horizontal: Screensize.width * 0.05,
      ),
      // margin: EdgeInsets.symmetric(
      //   vertical: Screensize.height * 0.02,

      // ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Balance",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: GlobalColors.grey9F,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
            child: Text(
              "₹82",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: GlobalColors.grey19,
              ),
            ),
          ),
          Row(
            children: [_buildButton("WITH DRAW",Withdrawcash()), _buildButton("ADD CASH",Addcash())],
          )
        ],
      ),
    );
  }

  Widget _buildButton(String label,Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: EdgeInsets.only(right: Screensize.width * 0.05),
        padding: EdgeInsets.symmetric(
            horizontal: Screensize.width * 0.03,
            vertical: Screensize.height * 0.01),
        decoration: BoxDecoration(
            color: GlobalColors.buttonColor,
            borderRadius: BorderRadius.circular(5.r)),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
