import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Callsupport extends StatelessWidget {
  const Callsupport({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.05),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                      minLines: 3,
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
            CustomButton(
              text: "Request Callback",
              onTap: () {
                _buildRequestCallBackDialog(context);
              },
              color: GlobalColors.buttonColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void _buildRequestCallBackDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding:
                EdgeInsets.symmetric(horizontal: Screensize.width * 0.1),
            backgroundColor: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Screensize.width * 0.05,
                  vertical: Screensize.height * 0.02),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Alert",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Screensize.height * 0.02),
                    child: Text(
                      "Callback requested! Our team will contact you shortly.",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      softWrap: true,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "OK",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: GlobalColors.deepTeal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
