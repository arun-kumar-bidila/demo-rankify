import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Toprankers2 extends StatefulWidget {
  final String exam;

  const Toprankers2({super.key, required this.exam});

  @override
  State<Toprankers2> createState() => _Toprankers2State();
}

class _Toprankers2State extends State<Toprankers2> {
  List<Map<String, dynamic>> rankerDetails = [
    {
      "exam": "SSC",
      "imagePath": "assets/dp.jpg",
      "rank": "1",
      "name": "arun",
      "score": "25",
      "sub": "GS"
    },
    {
      "exam": "SSC",
      "imagePath": "assets/dp.jpg",
      "rank": "1",
      "name": "arun",
      "score": "25",
      "sub": "GS"
    },
    {
      "exam": "SSC",
      "imagePath": "assets/dp.jpg",
      "rank": "1",
      "name": "arun",
      "score": "25",
      "sub": "GS"
    },
    {
      "exam": "SSC",
      "imagePath": "assets/dp.jpg",
      "rank": "1",
      "name": "arun",
      "score": "25",
      "sub": "GS"
    },
    {
      "exam": "SSC",
      "imagePath": "assets/dp.jpg",
      "rank": "1",
      "name": "arun",
      "score": "25",
      "sub": "GS"
    },
    {
      "exam": "SSC",
      "imagePath": "assets/dp.jpg",
      "rank": "1",
      "name": "arun",
      "score": "25",
      "sub": "GS"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top Rankers",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
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
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 6;i++) ...[
                _buildRankers(
                    // exam: ranker["exam"],
                    // imagePath: ranker["imagePath"],
                    // rank: ranker["rank"],
                    // name: ranker["name"],
                    // score: ranker["score"],
                    // subject: ranker["sub"]
                    exam: widget.exam,
                    imagePath: "assets/dp.jpg",
                    rank: "1",
      name: "arun",
      score: "25",
      subject: "GS"
                    )
              ]
            ],
          ),
        )
      ],
    );
  }

  Widget _buildRankers(
      {required exam,
      required imagePath,
      required rank,
      required name,
      required score,
      required subject}) {
    return Container(
      margin: EdgeInsets.only(right: Screensize.width * 0.02),
      padding: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.01,
          horizontal: Screensize.width * 0.035),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        children: [
          Text(
            exam,
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: GlobalColors.buttonColor),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
            child: CircleAvatar(
              radius: Screensize.height * 0.02,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          Row(
            children: [
              Text(
                "#${rank} ",
                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.005),
            child: Text(
              "Score:${score}/100",
              style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w400),
            ),
          ),
          Text(
            "Sub : ${subject}",
            style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
