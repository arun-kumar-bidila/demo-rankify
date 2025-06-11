// import 'dart:ffi';
// import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';
import 'package:rankify/features/liveexam/screens/confirmexam.dart';
import 'package:rankify/features/liveexam/widgets/allquestions.dart';
import 'package:rankify/features/liveexam/widgets/liveexambottombar.dart';

class Liveexamquestion extends StatefulWidget {
  const Liveexamquestion({super.key});

  @override
  State<Liveexamquestion> createState() => _LiveexamquestionState();
}

class _LiveexamquestionState extends State<Liveexamquestion> {
  int currentQuestionIndex = 0;
  int attempted = 0;
  int marked = 0;
  int notAttempted = 12;
  Set<int> attemptedQuestions = {};
  Set<int> markedQuestions = {};
  Map<int, int> selectedOptions = {};
  List<Map<String, dynamic>> questions = allquestions;

  void changeQuestion(int step, {bool saveAttempt = false,bool toPrevious=true}) {
    setState(() {
      int newIndex = currentQuestionIndex + step;
      if (saveAttempt) {
        attemptedQuestions.add(currentQuestionIndex);
        // markedQuestions.remove(currentQuestionIndex);
        updateCounts(attemptedQuestions.length, markedQuestions.length);
      }
      // if (!saveAttempt&&!toPrevious) {
      //   attemptedQuestions.remove(currentQuestionIndex);
      //   // markedQuestions.remove(currentQuestionIndex);
      //   updateCounts(attemptedQuestions.length, markedQuestions.length);
      // }
      if (newIndex >= 0 && newIndex < questions.length) {
        currentQuestionIndex = newIndex;
      } else if (newIndex == questions.length) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Confirmexam(
                      attempted: attemptedQuestions.length,
                      marked: markedQuestions.length,
                      notAttempted:
                          questions.length - attemptedQuestions.length,
                    )));
      }
    });
  }

  void markedForReview() {
    markedQuestions.add(currentQuestionIndex);
    updateCounts(attemptedQuestions.length, markedQuestions.length);
  }

  void updateCounts(int newlyAttempted, int newMarked) {
    setState(() {
      attempted = newlyAttempted;
      marked = newMarked;
      notAttempted = questions.length - attemptedQuestions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                vertical: Variables.top, horizontal: Variables.side),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: Variables.rowwidgetspace,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 20.r,
                    ),
                    Text(
                      "Attempted: $attempted",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.grey5D),
                    )
                  ],
                ),
                Row(
                  spacing: Variables.rowwidgetspace,
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: Colors.orange,
                      size: 20.r,
                    ),
                    Text(
                      "Marked: $marked",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.grey5D),
                    )
                  ],
                ),
                Row(
                  spacing: Variables.rowwidgetspace,
                  children: [
                    Icon(
                      Icons.cancel,
                      color: Colors.red,
                      size: 20.r,
                    ),
                    Text(
                      "Not Attempted: $notAttempted",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.grey5D),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: Variables.columnspace,
          ),
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
                        if (markedQuestions.contains(currentQuestionIndex)) ...[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Variables.rowwidgetspace,
                                vertical: Variables.columnspace),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  markedQuestions.remove(currentQuestionIndex);
                                  updateCounts(attemptedQuestions.length,
                                      markedQuestions.length);
                                });
                              },
                              child: Icon(
                                Icons.bookmark,
                                color: GlobalColors.buttonColor,
                                size: 25.r,
                              ),
                            ),
                          )
                        ]
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
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectedOptions[currentQuestionIndex] ==
                                    index) {
                                  selectedOptions.remove(currentQuestionIndex);
                                } else {
                                  selectedOptions[currentQuestionIndex] = index;
                                }
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: Variables.columnspace),
                              decoration: BoxDecoration(
                                color: selectedOptions[currentQuestionIndex] ==
                                        index
                                    ? GlobalColors.pinkF3
                                    : GlobalColors.greyF5,
                                borderRadius: BorderRadius.circular(10.r),
                                border: selectedOptions[currentQuestionIndex] ==
                                        index
                                    ? Border.all(
                                        color: GlobalColors.buttonColor,
                                        width: 1)
                                    : null,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: Variables.columnspace,
                                  horizontal: Variables.rowspace),
                              child: Row(
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
                            ),
                          );
                        }).toList())
                  ],
                ),
              ),
            ),
          ),
          Liveexambottombar(
            onNext: () {
              bool hasSelected =
                  selectedOptions.containsKey(currentQuestionIndex);
              changeQuestion(1, saveAttempt: hasSelected);
            },
            onPrevious: () => changeQuestion(-1),
            onMark: () => markedForReview(),
          ),
        ],
      ),
    );
  }
}
