import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/viewallexams.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/buildexamcard.dart';
import 'package:rankify/features/dashboard/widgets/bottomcontainer.dart';
import 'package:rankify/features/dashboard/widgets/middlecontainer.dart';
import 'package:rankify/features/dashboard/widgets/topcontainer.dart';
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Viewallexams(),
                      ),
                    );
                  },
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
          // SizedBox(
          //   height: Screensize.height * 0.48,
          //   child: _buildExam(context),
          // ),
          Buildexamcard(layoutheight: Screensize.height * 0.48)
        ],
      ),
    );
  }

  Widget _buildExam(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: Screensize.height * 0.02,
            left: Screensize.width * (6 / 375),
            right: Screensize.width * (6 / 375),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              //middle container
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                height: Screensize.height * 0.22,
                child: Middlecontainer(),
              ),

              //top container
              Positioned(
                right: 0,
                left: 0,
                top: -(Screensize.height * 0.001),
                child: Container(
                  height: Screensize.height * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: Offset(0, 2))
                    ],
                  ),
                  child: Topcontainer(),
                ),
              ),

              //low container
              Positioned(
                bottom: -(Screensize.height * 0.001),
                right: 0,
                left: 0,
                child: Container(
                  height: Screensize.height * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(30.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: Offset(0, -2))
                    ],
                  ),
                  child: Bottomcontainer(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
