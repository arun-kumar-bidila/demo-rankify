import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/dashboard/widgets/bottomcontainer2.dart';
import 'package:rankify/features/dashboard/widgets/middlecontainer2.dart';
import 'package:rankify/features/dashboard/widgets/topcontainer2.dart';
import 'package:rankify/utils/screen_size.dart';

class Upcomingexams2 extends StatefulWidget {
  const Upcomingexams2({super.key});

  @override
  State<Upcomingexams2> createState() => _Upcomingexams2State();
}

class _Upcomingexams2State extends State<Upcomingexams2> {
  List<Map<String, dynamic>> examDetails = [
    {
      "examImage": "assets/ssc.png",
      "examTitle": "SSC General Studies",
      "examDate": "2025-04-15",
      "examTime": "10:00 AM",
      "prizePool": "5,00,000/-",
      "entryFee": "50/-",
      "availableSlots": "8,000",
      "totalSlots": "10,000",
      "addOn1": "icons/premium-badge.png",
      "addOn1Lable": "₹25,000/-",
      "addOn2": "icons/wallet-filled-money-tool.png",
      "addOn2Lable": "50%",
      "addOn3": "icons/profit.png",
      "addOn3Lable": "50%",
    },
      {
      "examImage": "assets/ssc.png",
      "examTitle": "SSC General Studies",
      "examDate": "2025-04-15",
      "examTime": "10:00 AM",
      "prizePool": "5,00,000/-",
      "entryFee": "50/-",
      "availableSlots": "8,000",
      "totalSlots": "10,000",
      "addOn1": "icons/premium-badge.png",
      "addOn1Lable": "₹25,000/-",
      "addOn2": "icons/wallet-filled-money-tool.png",
      "addOn2Lable": "50%",
      "addOn3": "icons/profit.png",
      "addOn3Lable": "50%",
    },
      {
      "examImage": "assets/ssc.png",
      "examTitle": "SSC General Studies",
      "examDate": "2025-04-15",
      "examTime": "10:00 AM",
      "prizePool": "5,00,000/-",
      "entryFee": "50/-",
      "availableSlots": "8,000",
      "totalSlots": "10,000",
      "addOn1": "icons/premium-badge.png",
      "addOn1Lable": "₹25,000/-",
      "addOn2": "icons/wallet-filled-money-tool.png",
      "addOn2Lable": "50%",
      "addOn3": "icons/profit.png",
      "addOn3Lable": "50%",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: Screensize.height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Exams",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Screensize.width * 0.01),
                        child: Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                              color: GlobalColors.orange1A,
                              decoration: TextDecoration.underline,
                              decorationColor: GlobalColors.orange1A,
                              decorationThickness: 2),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20.r,
                        color: GlobalColors.orange1A,
                      )
                    ],
                  ))
            ],
          ),
        ),
        for (var card in examDetails)
          _buildUpcomingExams(
            examImage: card["examImage"],
            examTitle: card["examTitle"],
            examDate: card["examDate"],
            examTime: card["examTime"],
            prizePool: card["prizePool"],
            entryFee: card["entryFee"],
            availableSlots: card["availableSlots"],
            totalSlots: card["totalSlots"],
            addOn1: card["addOn1"],
            addOn1Label: card["addOn1Lable"],
            addOn2: card["addOn2"],
            addOn2Label: card["addOn2Lable"],
            addOn3: card["addOn3"],
            addOn3Label: card["addOn3Lable"],
          )
      ],
    );
  }

  Widget _buildUpcomingExams({
    required examImage,
    required examTitle,
    required examDate,
    required examTime,
    required prizePool,
    required entryFee,
    required availableSlots,
    required totalSlots,
    required addOn1,
    required addOn1Label,
    required addOn2,
    required addOn2Label,
    required addOn3,
    required addOn3Label,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Screensize.height*0.01),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          Topcontainer2(examTitle: examTitle, examImage: examImage),
          Middlecontainer2(
              examDate: examDate,
              examTime: examTime,
              prizepool: prizePool,
              entryFee: entryFee,
              availableSlots: availableSlots,
              totalSlots: totalSlots),
          Bottomcontainer2(
              addOn1: addOn1,
              addOn2: addOn2,
              addOn3: addOn3,
              addOn1Label: addOn1Label,
              addOn2Label: addOn2Label,
              addOn3Label: addOn3Label)
        ],
      ),
    );
  }
}
