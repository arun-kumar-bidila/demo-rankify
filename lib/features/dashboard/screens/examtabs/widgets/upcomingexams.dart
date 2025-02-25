import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Upcomingexams extends StatefulWidget {
  const Upcomingexams({super.key});

  @override
  State<Upcomingexams> createState() => _UpcomingexamsState();
}

class _UpcomingexamsState extends State<Upcomingexams> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Screensize.height*0.4,

      width: double.infinity,
      // color: Colors.blue,
      margin: EdgeInsets.only(
        left: Screensize.width * 0.02,
        right: Screensize.width * 0.02,
      ),
      child: Column(
        children: [
          Container(
            height: Screensize.height * 0.06,
            // color: Colors.pink,
            padding: EdgeInsets.only(
                // top: Screensize.height * 0.01,
                // bottom: Screensize.height * 0.01,
                left: Screensize.width * (6 / 375),
                right: Screensize.width * (6 / 375)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Exams",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),

                //viewall

                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: GlobalColors.viewall),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "View all",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: GlobalColors.viewall,
                            decorationThickness: 2,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: Screensize.width * 0.01,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: Screensize.width * (18 / 375),
                        color: GlobalColors.viewall,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          
          
          SizedBox(
            height: Screensize.height * 0.48,
            child: _buildExam(context),
          ),
        ],
      ),
    );
  }

  Widget _buildExam(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              color: Colors.pink,
              height: Screensize.height * 0.15,
            )
          ],
        );
      },
    );
  }
}
