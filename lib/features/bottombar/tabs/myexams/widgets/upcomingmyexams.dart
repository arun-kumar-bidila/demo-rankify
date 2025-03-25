import 'package:flutter/material.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/examcard.dart';
import 'package:rankify/utils/screen_size.dart';

class Upcomingmyexams extends StatefulWidget {
  const Upcomingmyexams({super.key});

  @override
  State<Upcomingmyexams> createState() => _UpcomingmyexamsState();
}

class _UpcomingmyexamsState extends State<Upcomingmyexams> {
  List<Map<String, dynamic>> examDetails = [
    {
      "examImage": "assets/ssc.png",
      "examTitle": "SSC General Studies",
      "examDate": "25 Jan 2025",
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
      "examDate": "25 Jan 2025",
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
      "examDate": "25 Jan 2025",
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
    return Container(
      height: double.infinity,
      margin: EdgeInsets.only(
          bottom: Screensize.height * 0.02,
          left: Screensize.width * 0.01,
          right: Screensize.width * 0.01),
      padding: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.02,
          horizontal: Screensize.width * 0.03),
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (var card in examDetails)
              Examcard(
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
                color: GlobalColors.greyF5,
                textColor: GlobalColors.grey5D,
                shadowColor: Colors.black.withOpacity(0.2),
              )
          ],
        ),
      ),
    );
  }
}
