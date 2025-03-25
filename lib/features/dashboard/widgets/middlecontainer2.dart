import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Middlecontainer2 extends StatefulWidget {
  final String examDate;
   final Color color;
  final Color textColor;
  final String examTime;
  final String prizepool;
  final String entryFee;
  final String availableSlots;
  final String totalSlots;
  const Middlecontainer2(
      {super.key,
      required this.examDate,
      required this.examTime,
      required this.prizepool,
      required this.entryFee,
      required this.availableSlots,
      required this.totalSlots,
      required this.color,
      required this.textColor});

  @override
  State<Middlecontainer2> createState() => _Middlecontainer2State();
}

class _Middlecontainer2State extends State<Middlecontainer2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Screensize.height * 0.02,
        horizontal: Screensize.width * 0.03,
      ),
      child: Column(
        children: [
          //building first row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFeature(
                  featureImage: "icons/calendar.png",
                  featureLabel: widget.examDate),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.005,
                    horizontal: Screensize.width * 0.02),
                decoration: BoxDecoration(
                  color: GlobalColors.orangeD1,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: _buildFeature(
                    featureImage: "icons/hour-glass.png",
                    featureLabel: "4d 7h 10m",
                    isTime: true),
              ),
              _buildFeature(
                  featureImage: "icons/time.png", featureLabel: widget.examTime)
            ],
          ),

          //building second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹ ${widget.prizepool}",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600,color: widget.textColor),
              ),
              IntrinsicWidth(
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero, // Removes minimum constraints
                      // tapTargetSize: MaterialTapTargetSize
                      //     .shrinkWrap, // Removes extra touch padding
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: Screensize.height * 0.005,
                          horizontal: Screensize.width * 0.03),
                      decoration: BoxDecoration(
                          color: GlobalColors.buttonColor,
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Text(
                        "₹${widget.entryFee}",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    )),
              )
            ],
          ),

          //building third row
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.availableSlots} Available",
                    style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                        color: GlobalColors.buttonColor),
                  ),
                  Row(
                    children: [
                      Text(
                    "${widget.totalSlots} ",
                    style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                        color: widget.textColor),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Screensize.width*0.01),
                    decoration: BoxDecoration(
                      color: GlobalColors.orange1A,
                      borderRadius: BorderRadius.circular(1.r)
                    ),
                    child: Text(
                    "M",
                    style: TextStyle(
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  )
                    ],
                  )
                ],
              ),

              Padding(
                padding:  EdgeInsets.only(top: Screensize.height*0.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.r),
                  child: Container(
                    width: double.infinity,
                    height: 10,
                    decoration: BoxDecoration(
                      color: GlobalColors.greyDA
                    ),
                    child: Stack(
                      children: [
                        FractionallySizedBox(
                          widthFactor: 5/10,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              gradient: GlobalColors.progressBar
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildFeature(
      {required featureImage, required featureLabel, bool? isTime}) {
    return Row(
      children: [
        Image.asset(
          featureImage,
          height: Screensize.height * 0.015,
        ),
        Padding(
          padding: EdgeInsets.only(left: Screensize.width * 0.02),
          child: Text(
            featureLabel,
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color:
                    isTime == true ? GlobalColors.buttonColor : widget.textColor),
          ),
        )
      ],
    );
  }
}
