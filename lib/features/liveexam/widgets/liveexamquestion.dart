import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';
import 'package:rankify/features/liveexam/screens/confirmexam.dart';
import 'package:rankify/features/liveexam/widgets/liveexambottombar.dart';

class Liveexamquestion extends StatefulWidget {
  const Liveexamquestion({super.key});

  @override
  State<Liveexamquestion> createState() => _LiveexamquestionState();
}

class _LiveexamquestionState extends State<Liveexamquestion> {
  int currentQuestionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      "question":
          "Which of the following statements are correct Constitution of India?",
      "questionStatements": [
        "Powers of the Municipalities are given in Part IX A of the Constitution",
        "Emergency provisions are given in Part XVIII of the Constitution",
        "Provisions related to the amendment of the Constitution are given in Part XX of the Constitution."
      ],
      "imagePath": "",
      "options": [
        "1 and 2 only",
        "2 and 3 only",
        "1 and 3 only",
        "All are correct",
      ]
    },
    {
      "question":
          "In the following number series, which number comes next: 2, 6, 12, 20, 30, ?",
      "questionStatements": [
       
      ],
      "imagePath": "",
      "options": [
        "40",
        "42",
        "44",
        "46",
      ]
    },
    {
      "question":
          "Study the pattern and find the missing term: \n 2, 6, 12, 20, ?, 42 \n \nThe pattern follows a specific rule where each term increases by a sequence.",
      "questionStatements": [],
      "imagePath": "",
      "options": [
        "28",
        "30",
        "32",
        "34",
      ]
    },
     {
      "question":
          "In the image below, identify the monument shown:",
      "questionStatements": [],
      "imagePath": "assets/tajmahal.png",
      "options": [
        "Taj Mahal",
        "Charminar",
        "Burj Khalifa",
        "Red Fort",
      ]
    }
  ];

  void changeQuestion(int step) {
    setState(() {
      int newIndex = currentQuestionIndex + step;
      if (newIndex >= 0 && newIndex < questions.length) {
        currentQuestionIndex = newIndex;
      }
      if (newIndex == questions.length) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Confirmexam()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Variables.side),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Question ${currentQuestionIndex + 1} of 12",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: GlobalColors.grey5D),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: Variables.columnspace,
                      horizontal: Variables.rowwidgetspace),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: GlobalColors.pinkF3),
                  child: Row(
                    spacing: Variables.rowwidgetspace,
                    children: [
                      Icon(
                        Icons.language,
                        color: GlobalColors.buttonColor,
                        size: 20.r,
                      ),
                      Text(
                        "English",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: GlobalColors.buttonColor),
                      ),
                      Icon(
                        Icons.expand_less,
                        color: GlobalColors.buttonColor,
                        size: 20.r,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: Variables.columnspace,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: Variables.side),
              padding: EdgeInsets.symmetric(
                  horizontal: Variables.rowspace, vertical: Variables.top),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  spacing: Variables.top,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${currentQuestionIndex + 1} . ",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey25),
                        ),
                        Expanded(
                          child: Text(
                            "${questions[currentQuestionIndex]["question"]}",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: GlobalColors.grey25),
                          ),
                        ),
                      ],
                    ),
                    if (questions[currentQuestionIndex]["imagePath"] != "") ...[
                      Image.asset(
                        questions[currentQuestionIndex]["imagePath"],
                        height: Variables.imageverylarge,
                      )
                      // SvgPicture.asset(
                      //   "assets/svg/tajmahal.svg",
                      //   height: Variables.imageverylarge,
                       
                        
                      // ),
                    ],
                    if ((questions[currentQuestionIndex]["questionStatements"]
                            as List<dynamic>)
                        .isNotEmpty)
                      Column(
                          spacing: Variables.columnspace,
                          mainAxisSize: MainAxisSize.min,
                          children: (questions[currentQuestionIndex]
                                  ["questionStatements"] as List<String>)
                              .asMap()
                              .entries
                              .map<Widget>((entry) {
                            int index = entry.key;
                            String point = entry.value;

                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: Variables.rowspace,
                              children: [
                                Text(
                                  "${index + 1} .",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: GlobalColors.grey5D),
                                ),
                                Expanded(
                                    child: Text(
                                  point,
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: GlobalColors.grey5D),
                                ))
                              ],
                            );
                          }).toList()),
                    Text(
                      "Options:",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.grey25),
                    ),
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        children: (questions[currentQuestionIndex]["options"]
                                as List<String>)
                            .asMap()
                            .entries
                            .map<Widget>((entry) {
                          int index = entry.key;
                          String point = entry.value;
                          List<String> prefixes = ["A", "B", "C", "D"];
                          return Container(
                            margin:
                                EdgeInsets.only(bottom: Variables.columnspace),
                            decoration: BoxDecoration(
                                color: GlobalColors.greyF5,
                                borderRadius: BorderRadius.circular(10.r)),
                            padding: EdgeInsets.symmetric(
                                vertical: Variables.columnspace,
                                horizontal: Variables.rowspace),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: Variables.rowspace,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Variables.columnspace,
                                      horizontal: Variables.rowspace),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: GlobalColors.greyD9,
                                          width: 1)),
                                  child: Text(
                                    prefixes[index],
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: GlobalColors.grey25),
                                  ),
                                ),
                                Expanded(
                                    child: Text(
                                  point,
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: GlobalColors.grey5D),
                                ))
                              ],
                            ),
                          );
                        }).toList())
                  ],
                ),
              ),
            ),
          ),
          Liveexambottombar(
            onNext: () => changeQuestion(1),
            onPrevious: () => changeQuestion(-1),
          ),
        ],
      ),
    );
  }
}
