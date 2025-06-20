import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Padding(
              padding: const EdgeInsets.only(left: 17,top: 2,bottom: 12),
              child: Text(
                "More From Rankify",
                style: TextStyle(
                  fontSize: 16,
                  color: GlobalColors.grey19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              _buildMoreFromRankify(
                  'assets/svg/info.svg', "Rankify GPT", "AI -Based Learning Support", 0),
              _buildMoreFromRankify('assets/svg/store.svg', "Rankify Store",
                  "Competitive Book Store", 1),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildMoreFromRankify(
      String svgIcon, String label, String sublabel, int pos) {
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
          vertical: 13,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 13,right: 20),
              child: SvgPicture.asset(
                svgIcon,
                height: 20,
                width: 20,
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
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: GlobalColors.grey19),
                ),
                Text(
                  sublabel,
                  style: TextStyle(
                      fontSize: 9,
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
