import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';

class Liveexambottombar extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onPrevious;
  final VoidCallback onMark;
  const Liveexambottombar(
      {super.key, required this.onNext, required this.onPrevious,required this.onMark});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Variables.columnspace, horizontal: Variables.rowspace),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: onPrevious,
                style: TextButton.styleFrom(
                    backgroundColor: GlobalColors.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                child: Text(
                  "Previous",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
          ),
          SizedBox(
            width: Variables.rowspace,
          ),
          Expanded(
            child: TextButton(
                onPressed: onMark,
                style: TextButton.styleFrom(
                    backgroundColor: GlobalColors.greyF5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                child: Text(
                  "Mark for Review",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: GlobalColors.grey5D),
                )),
          ),
          SizedBox(
            width: Variables.rowspace,
          ),
          Expanded(
            child: TextButton(
                onPressed: onNext,
                style: TextButton.styleFrom(
                    backgroundColor: GlobalColors.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                child: Text(
                  "Save & Next",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
