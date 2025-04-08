import 'package:flutter/material.dart';

import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers2.dart';

import 'package:rankify/features/dashboard/screens/examtabs/widgets/upcomingexams2.dart';

import 'package:rankify/utils/screen_size.dart';

class Homescreen extends StatefulWidget {
  final String whichHome;
  const Homescreen({super.key, required this.whichHome});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late String examImage;
  String getExamImage(String whichHome) {
    switch (whichHome) {
      case "ssc":
        return "assets/ssc.png";
      case "banks":
        return "assets/banks.png";
      case "rrb":
        return "assets/rrb.png";
      case "upsc":
        return "assets/upsc.png";
      case "appsc":
        return "assets/appsc.png";
      case "others":
        return "assets/ssc.png";
      default:
        return "assets/ssc.png";
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
