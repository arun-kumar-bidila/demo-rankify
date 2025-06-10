import 'package:flutter/material.dart';

import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers2.dart';

import 'package:rankify/features/dashboard/screens/examtabs/widgets/upcomingexams2.dart';

import 'package:rankify/utils/screen_size.dart';
import 'package:rankify/utils/userdata.dart';

class Homescreen extends StatefulWidget {
  final String whichHome;
  const Homescreen({super.key, required this.whichHome});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late String examImage;
  String homeStateExam = UserData().stateExam!.toLowerCase();
  String getExamImage(String whichHome) {
    if (whichHome == "ssc") {
      return "assets/ssc.png";
    } else if (whichHome == "banks") {
      return "assets/banks.png";
    } else if (whichHome == "rrb") {
      return "assets/rrb.png";
    } else if (whichHome == "upsc") {
      return "assets/upsc.png";
    } else if (whichHome == "others") {
      return "assets/ssc.png";
    } else if (whichHome == homeStateExam) {
      return "assets/$homeStateExam.png";
    } else {
      return "assets/ssc.png";
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // homeStateExam = UserData().stateExam ?? "appsc";
    examImage = getExamImage(widget.whichHome);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.05),
      // color: Colors.amber,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          //toprankers
          Toprankers2(
            exam: widget.whichHome.toUpperCase(),
          ),
          // Toprankers()

          //upcoming exams
          Upcomingexams2(
            examTitlePrefix: widget.whichHome.toUpperCase(),
            examImage: examImage,
          ),
          // Upcomingexams(),
        ]),
      ),
    );
  }
}
