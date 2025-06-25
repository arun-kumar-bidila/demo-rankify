import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rankify/constants/colors.dart';

import 'package:rankify/features/profilebar/tabs/withdraw/widgets/withdrawcashtitle.dart';
import 'package:rankify/features/profilebar/tabs/withdraw/widgets/withdrawmoneyfield.dart';
import 'package:rankify/utils/screen_size.dart';

class Withdrawcash extends StatefulWidget {
  const Withdrawcash({super.key});

  @override
  State<Withdrawcash> createState() => _WithdrawcashState();
}

class _WithdrawcashState extends State<Withdrawcash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Withdrawcashtitle(),
            Withdrawmoneyfield(),
            Padding(
                padding:
                    EdgeInsets.only(top: 60),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: GlobalColors.buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:5,
                              ),
                          child: Text(
                            "Withdraw Money",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )))
          ],
        ),
      )),
    );
  }
}
