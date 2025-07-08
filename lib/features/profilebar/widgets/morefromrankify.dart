import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Morefromrankify extends StatefulWidget {
  const Morefromrankify({super.key});

  @override
  State<Morefromrankify> createState() => _MorefromrankifyState();
}

class _MorefromrankifyState extends State<Morefromrankify> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "More From Rankify",
              style: TextStyle(
                fontSize: 16.sp,
                color: GlobalColors.grey19,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: Screensize.height * 0.01,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            children: [
              _buildMoreFromRankify(
                  Icons.info, "Rankify GPT", "AI -Based Learning Support", 0),
              _buildMoreFromRankify(Icons.storefront_sharp, "Rankify Store",
                  "Competitive Book Store", 1),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildMoreFromRankify(
      IconData icon, String label, String sublabel, int pos) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        border: pos == 0
            ? Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              )
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.01,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Screensize.width * 0.03,
                  right: Screensize.width * 0.06),
              child: Icon(
                icon,
                size: 25.r,
                color: Colors.black,
              ),
            ),
            // Image.asset(
            //   iconPath,
            //   // width: Screensize.width * 0.04,
            //   height: Screensize.height * 0.03,
            // ),
            // SizedBox(
            //   width: Screensize.width * 0.05,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: GlobalColors.grey19),
                ),
                Text(
                  sublabel,
                  style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      color: GlobalColors.grey80),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
