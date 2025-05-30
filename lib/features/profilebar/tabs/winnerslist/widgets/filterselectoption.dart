import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Filterselectoption extends StatelessWidget {
  final String selectWhat;
  final VoidCallback onClick;
  const Filterselectoption({super.key,required this.selectWhat,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select $selectWhat",
            style: TextStyle(
                fontSize: 15.sp,
                color: GlobalColors.grey25,
                fontWeight: FontWeight.w500),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: Screensize.width*0.7,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    width: 2,
                    color: GlobalColors.greyC6,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              
                children: [
                  Text(
                    "Select $selectWhat",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: GlobalColors.grey19,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 20.r,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
