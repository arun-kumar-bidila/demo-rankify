import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Confirmexaminfo extends StatefulWidget {
  const Confirmexaminfo({super.key});

  @override
  State<Confirmexaminfo> createState() => _ConfirmexaminfoState();
}

class _ConfirmexaminfoState extends State<Confirmexaminfo> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: Screensize.height * 0.01),
        padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.03),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: Screensize.height * 0.01,
                    bottom: Screensize.height * 0.015),
                child: Text(
                  "Redeem Coins",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: GlobalColors.grey25),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Screensize.width * 0.03,
                  // vertical: Screensize.height * 0.005,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: GlobalColors.greyD9, width: 1)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.r,
                          color: Colors.amber,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: Screensize.width * 0.05),
                          child: Text(
                            "Use Coins: 10",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey25,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                                side: BorderSide(
                                    color: GlobalColors.greyD9, width: 2),
                                activeColor: GlobalColors.buttonColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Screensize.width * 0.02,
                    vertical: Screensize.height * 0.01),
                child: Text(
                  "1 Coin = ₹1",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: GlobalColors.grey5D),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Screensize.height * 0.01,
                    bottom: Screensize.height * 0.015),
                child: Text(
                  "Details of Exam",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: GlobalColors.grey25),
                ),
              ),
              _buildDetailFeature(
                  icon: Icons.currency_rupee,
                  info: "Entry Fee : 50/-",
                  isMainFeature: true),
              _buildDetailFeature(
                  icon: Icons.event_outlined,
                  info: "25 January 2025, 10:00 AM",
                  isMainFeature: true),
              Padding(
                padding: EdgeInsets.only(bottom: Screensize.height * 0.01),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Padding(
                        padding:
                            EdgeInsets.only(right: Screensize.width * 0.01),
                        child: _buildDetailFeature(
                            icon: Icons.info_outline,
                            info: "Total Questions: 50",
                            isMainFeature: false),
                      )),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: Screensize.width * 0.01),
                          child: _buildDetailFeature(
                              icon: Icons.access_time_rounded,
                              info: "Duration: 60 Min",
                              isMainFeature: false),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              _buildDetailFeature(
                  icon: Icons.payments,
                  info: "Price Money: 5,00,000",
                  isMainFeature: true),
              _buildDetailFeature(
                  icon: Icons.emoji_events_rounded,
                  info:
                      "Reward: Top 50% get cashback. Bottom 50% will earn coins.",
                  isMainFeature: true)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailFeature(
      {required IconData icon,
      required String info,
      required bool isMainFeature}) {
    return Container(
      margin:
          EdgeInsets.only(bottom: isMainFeature ? Screensize.height * 0.01 : 0),
      padding: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.01,
          horizontal: Screensize.width * 0.02),
      decoration: BoxDecoration(
        color: GlobalColors.greyF5,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Screensize.height * 0.005,
                horizontal: Screensize.width * 0.01),
            decoration: isMainFeature
                ? BoxDecoration(
                    color: GlobalColors.pinkF3, shape: BoxShape.circle)
                : null,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Screensize.width * 0.03),
              child: Icon(
                icon,
                color: isMainFeature
                    ? GlobalColors.buttonColor
                    : GlobalColors.grey5D,
                size: 25.r,
              ),
            ),
          ),
          Expanded(
            child: Text(
              info,
              style: TextStyle(
                  fontSize: isMainFeature ? 16.sp : 12.sp,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.grey5D),
            ),
          )
        ],
      ),
    );
  }
}
