import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Withdrawmoneyfield extends StatefulWidget {
  const Withdrawmoneyfield({super.key});

  @override
  State<Withdrawmoneyfield> createState() => _WithdrawmoneyfieldState();
}

class _WithdrawmoneyfieldState extends State<Withdrawmoneyfield> {
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
            "Withdraw Money",
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
          child: Text(
            "Maximum Withdrawal Amount : ₹82",
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: GlobalColors.grey80),
          ),
        ),
       
      ],
    );
  }
}
