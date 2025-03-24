import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Addmoneyfield extends StatefulWidget {
  const Addmoneyfield({super.key});

  @override
  State<Addmoneyfield> createState() => _AddmoneyfieldState();
}

class _AddmoneyfieldState extends State<Addmoneyfield> {
  List<Map<String, dynamic>> addMoney = [
    {"amount": "50", "bonusAmount": "5"},
    {"amount": "100", "bonusAmount": "10"},
    {"amount": "250", "bonusAmount": "20"},
    {"amount": "300", "bonusAmount": "30"},
     {"amount": "300", "bonusAmount": "30"},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Screensize.width * 0.03,
          ),
          child: Text(
            "Add Money",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: Screensize.height * 0.01,
          ),
          child: TextField(
            cursorColor: GlobalColors.buttonColor,
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
                hintText: "₹ Enter Amount",
                hintStyle: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.grey80,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.03,
                    horizontal: Screensize.width * 0.05)),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Screensize.height * 0.01,
              horizontal: Screensize.width * 0.03),
          child: Row(
            children: [
              Text(
                "Quick Option",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: GlobalColors.grey80),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Screensize.width * 0.03,
                ),
                child: Icon(
                  Icons.info,
                  size: 15.r,
                  color: GlobalColors.grey80,
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var card in addMoney) ...[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Screensize.width*0.01),
                  padding: EdgeInsets.symmetric(vertical: Screensize.height*0.02,horizontal: Screensize.width*0.03),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Text(
                        "₹ ${card["amount"]}",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: GlobalColors.grey38),
                      ),
                      Container(
                         margin: EdgeInsets.only(top: Screensize.height*0.01),
                        padding: EdgeInsets.symmetric(vertical: Screensize.height*0.005,horizontal: Screensize.width*0.05),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: GlobalColors.pinkF3),
                        child: Row(
                          children: [
                            Text(
                              "+₹${card["bonusAmount"]} Bonus",
                              style: TextStyle(fontSize: 8.sp,fontWeight: FontWeight.w800,color: GlobalColors.buttonColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]
            ],
          ),
        )
      ],
    );
  }
}
