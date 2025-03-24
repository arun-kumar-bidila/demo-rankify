import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/addcash/widgets/addcashtitle.dart';
import 'package:rankify/features/profilebar/tabs/addcash/widgets/addmoneyfield.dart';
import 'package:rankify/utils/screen_size.dart';

class Addcash extends StatefulWidget {
  const Addcash({super.key});

  @override
  State<Addcash> createState() => _AddcashState();
}

class _AddcashState extends State<Addcash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.03),
        child: Column(
          children: [
            Addcashtitle(),
            Addmoneyfield(),
            Padding(
                padding:
                    EdgeInsets.symmetric(vertical: Screensize.height * 0.05),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: GlobalColors.buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                         padding:
                    EdgeInsets.symmetric(vertical: Screensize.height * 0.005),
                          child: Text(
                            "Add Money",
                            style: TextStyle(
                                fontSize: 17.sp,
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
