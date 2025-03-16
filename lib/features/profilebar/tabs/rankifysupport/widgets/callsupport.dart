import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Callsupport extends StatelessWidget {
  const Callsupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.05),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.02),
            child: Container(
              width: double.infinity,
              // margin: EdgeInsets.symmetric(horizontal: Screensize.width*0.05),
              padding: EdgeInsets.symmetric(
                  horizontal: Screensize.width * 0.05,
                  vertical: Screensize.height * 0.02),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.headset_mic,
                    size: 40.r,
                    color: GlobalColors.buttonColor,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Screensize.height * 0.01),
                    child: Text(
                      "Alert",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "Callback requested!",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: GlobalColors.grey80),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Screensize.height * 0.01),
                    child: Text(
                      "Our team will contact you shortly",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.grey80),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: GlobalColors.grey80,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                      ),
                ),
              )
            ],
          ),
           Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.02),
             child: Row(
              children: [
                Expanded(
                  child: TextField(
                    minLines: 4,
                    // keyboardType: TextInputType.multiline,
                    maxLines: null,
                    // maxLength: 4,
                    decoration: InputDecoration(
                        hintText: "Briefly describe your issues",
                        hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.grey80,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        isDense: true,
                        ),
                  ),
                )
              ],
                       ),
           ),

        ],
      ),
    );
  }
}
