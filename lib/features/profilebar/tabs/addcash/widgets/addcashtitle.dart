import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Addcashtitle extends StatefulWidget {
  const Addcashtitle({super.key});

  @override
  State<Addcashtitle> createState() => _AddcashtitleState();
}

class _AddcashtitleState extends State<Addcashtitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 22,
        bottom: 22,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 30
        ),
      decoration: BoxDecoration(
          gradient: GlobalColors.primaryGradient,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              )),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Balance",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        "₹82",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.refresh,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
