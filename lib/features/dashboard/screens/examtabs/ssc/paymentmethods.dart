import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Paymentmethods extends StatefulWidget {
  const Paymentmethods({super.key});

  @override
  State<Paymentmethods> createState() => _PaymentmethodsState();
}

class _PaymentmethodsState extends State<Paymentmethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Screensize.height * 0.02,
                horizontal: Screensize.width * 0.05),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/R1.png",
                  height: Screensize.height * 0.05,
                ),
                Icon(
                  Icons.menu,
                  size: 25.r,
                  color: GlobalColors.grey25,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.02),
            decoration: BoxDecoration(gradient: GlobalColors.primaryGradient),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Payment Methods",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Screensize.height * 0.02,
                horizontal: Screensize.width * 0.05),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: GlobalColors.whiteDE, width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "This is your order name",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: GlobalColors.grey25,
                  ),
                ),
                Text("₹40",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: GlobalColors.grey25,
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.05),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Screensize.height * 0.02,
                    ),
                    child: Text("UPI",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: GlobalColors.grey25,
                        )),
                  ),
                  Row(
                    children: [
                      _buildPaymentMethod(
                          imagePath: "assets/google-pay-icon.png", info: "GPay"),
                      _buildPaymentMethod(
                          imagePath: "assets/phonepe-icon.png", info: "PhonePe"),
                      _buildPaymentMethod(
                          imagePath: "icons/google.png", info: "More Apps"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Screensize.height * 0.04,
                      bottom: Screensize.height * 0.02,
                    ),
                    child: Text("Other UPI Options",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: GlobalColors.blueF3,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Screensize.height * 0.02,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cards",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: GlobalColors.grey25,
                            )),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: Screensize.height * 0.02,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.wallet,
                                size: 30.r,
                                color: GlobalColors.buttonColor,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: Screensize.width * 0.05),
                                  child: Text("Cards",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        color: GlobalColors.grey25,
                                      )),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20.r,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              
                   Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Screensize.height * 0.02,
                    ),
                    child: Text("Net Banking",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: GlobalColors.grey25,
                        )),
                  ),
                  Row(
                    children: [
                      _buildPaymentMethod(
                          imagePath: "assets/sbi.png", info: "SBI"),
                      _buildPaymentMethod(
                          imagePath: "assets/icici.png", info: "ICICI"),
                      _buildPaymentMethod(
                          imagePath: "assets/axis.png", info: "Axis"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Screensize.height * 0.04,
                      bottom: Screensize.height * 0.02,
                    ),
                    child: Text("Other Banks",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: GlobalColors.blueF3,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget _buildPaymentMethod(
      {required String imagePath, required String info}) {
    return Padding(
      padding: EdgeInsets.only(
        right: Screensize.width * 0.1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: Screensize.height * 0.01),
            padding: EdgeInsets.symmetric(
                vertical: Screensize.height * 0.01,
                horizontal: Screensize.width * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: GlobalColors.whiteDE, width: 1),
            ),
            child: Image.asset(
              imagePath,
              height: Screensize.height * 0.04,
            ),
          ),
          Text(
            info,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: GlobalColors.grey25,
            ),
          )
        ],
      ),
    );
  }
}
