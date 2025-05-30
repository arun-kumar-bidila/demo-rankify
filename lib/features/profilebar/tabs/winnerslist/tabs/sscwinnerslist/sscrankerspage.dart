import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/winnerslist/tabs/sscwinnerslist/latestRankersPage.dart';
import 'package:rankify/features/profilebar/tabs/winnerslist/tabs/sscwinnerslist/sscwinnerswidget.dart';
import 'package:rankify/features/profilebar/tabs/winnerslist/widgets/examdata.dart';
import 'package:rankify/features/profilebar/tabs/winnerslist/widgets/filteroptionrow.dart';
import 'package:rankify/features/profilebar/tabs/winnerslist/widgets/filterselectoption.dart';

import 'package:rankify/utils/screen_size.dart';

class Sscrankerspage extends StatefulWidget {
  final String exam;
  const Sscrankerspage({super.key, required this.exam});

  @override
  State<Sscrankerspage> createState() => _SscrankerspageState();
}

class _SscrankerspageState extends State<Sscrankerspage> {
  String? selectedExam;
  String? selectedSubject;
  Widget? selectedPage;
  String? selectedFilteredExam;
  String? selectedFilteredSubject;

  @override
  void didUpdateWidget(covariant Sscrankerspage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.exam != widget.exam) {
      // Reset selections when the exam category changes
      selectedExam = null;
      selectedSubject = null;
    }
  }

  void showDialogForSubject() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.02,
                  horizontal: Screensize.width * 0.05),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select Date",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close_rounded,
                          size: 25.r,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  for (var entry in no_of_exams_based_on_subjects.entries)
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: Screensize.height * 0.01),
                      padding: EdgeInsets.symmetric(
                          vertical: Screensize.height * .01,
                          horizontal: Screensize.width * 0.05),
                      decoration: BoxDecoration(
                          color: GlobalColors.greyF5,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(Icons.calendar_today_outlined,
                                    size: 15.r),
                              ),
                              Text(
                                entry.key,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: GlobalColors.grey5D),
                              ),
                            ],
                          ),
                          Text(
                            "${entry.value} exams",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: GlobalColors.grey5D),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          );
        });
  }

  void showDialogForYear() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.02,
                  horizontal: Screensize.width * 0.05),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select Year",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close_rounded,
                          size: 25.r,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  for (var entry in yearData)
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: Screensize.height * 0.01),
                      padding: EdgeInsets.symmetric(
                          vertical: Screensize.height * .01,
                          horizontal: Screensize.width * 0.05),
                      decoration: BoxDecoration(
                          color: GlobalColors.greyF5,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        children: [
                          Text(
                            entry,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: GlobalColors.grey5D),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          );
        });
  }

  void showDialogForMonth() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        bool isSelected = false;
        return StatefulBuilder(
          builder: (context, setModelState) {
            return Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.02,
                    horizontal: Screensize.width * 0.05),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Month",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close_rounded,
                            size: 25.r,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    for (var entry in no_of_exams_based_on_Month.entries)
                      GestureDetector(
                        onTap: () {
                          // setModelState(() {
                          //   isSelected = true;
                          // });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: Screensize.height * 0.01),
                          padding: EdgeInsets.symmetric(
                              vertical: Screensize.height * .01,
                              horizontal: Screensize.width * 0.05),
                          decoration: BoxDecoration(
                              color: GlobalColors.greyF5,
                              borderRadius: BorderRadius.circular(10.r),
                              border: isSelected
                                  ? Border.all(
                                      color: GlobalColors.buttonColor, width: 1)
                                  : null),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Icon(Icons.calendar_today_outlined,
                                        size: 15.r),
                                  ),
                                  Text(
                                    entry.key,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                        color: GlobalColors.grey5D),
                                  ),
                                ],
                              ),
                              Text(
                                "${entry.value} exams",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: GlobalColors.grey5D),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void showFilterBottomSheet(
      BuildContext context, Function(String?, String?) onApply) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) {
        return SafeArea(
          child: DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.7,
            minChildSize: 0.5,
            maxChildSize: 0.7,
            builder: (_, context) {
              return StatefulBuilder(
                builder: (context, setModelState) {
                  return Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setModelState(() {
                              selectedFilteredExam = null;
                              selectedFilteredSubject = null;
                            });
                          },
                          child: Filteroptionrow(buttonName: "Clear All")),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: GlobalColors.greyF2,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r),
                            ),
                          ),
                          child: Column(
                            children: [
                              Filteroptionrow(
                                  buttonName: "Total SSC Exams: 180"),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children:
                                      examsByCategory[widget.exam]!.map((exam) {
                                    bool isSelected =
                                        exam == selectedFilteredExam;
                                    return TextButton(
                                      onPressed: () {
                                        setModelState(() {
                                          if (selectedFilteredExam == exam) {
                                            selectedFilteredExam = null;
                                            selectedFilteredSubject = null;
                                          } else {
                                            selectedFilteredExam = exam;
                                            selectedFilteredSubject = null;
                                          }
                                        });
                                      },
                                      style: TextButton.styleFrom(
                                          splashFactory: NoSplash.splashFactory,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          padding: EdgeInsets.zero),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal:
                                                Screensize.width * 0.01),
                                        padding: EdgeInsets.symmetric(
                                            vertical: Screensize.height * 0.005,
                                            horizontal:
                                                Screensize.width * 0.05),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                          border: isSelected
                                              ? Border.all(
                                                  color:
                                                      GlobalColors.buttonColor,
                                                  width: 1)
                                              : null,
                                        ),
                                        child: Row(children: [
                                          Text(
                                            "$exam (22)",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: isSelected
                                                    ? GlobalColors.buttonColor
                                                    : Colors.black),
                                          ),
                                        ]),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                              if (selectedFilteredExam != null &&
                                  subjectByCategory[selectedFilteredExam] !=
                                      null &&
                                  widget.exam != "upsc") ...[
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children:
                                        subjectByCategory[selectedFilteredExam]!
                                            .map(
                                      (subject) {
                                        bool isSelected =
                                            selectedFilteredSubject == subject;
                                        return TextButton(
                                          onPressed: () {
                                            setModelState(() {
                                              selectedFilteredSubject = subject;
                                            });
                                          },
                                          style: TextButton.styleFrom(
                                              splashFactory:
                                                  NoSplash.splashFactory,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              padding: EdgeInsets.zero),
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal:
                                                    Screensize.width * 0.01),
                                            padding: EdgeInsets.symmetric(
                                                vertical:
                                                    Screensize.height * 0.005,
                                                horizontal:
                                                    Screensize.width * 0.05),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              border: isSelected
                                                  ? Border.all(
                                                      color: GlobalColors
                                                          .buttonColor,
                                                      width: 1)
                                                  : null,
                                            ),
                                            child: Text(
                                              "$subject (25)",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: isSelected
                                                      ? GlobalColors.buttonColor
                                                      : Colors.black),
                                            ),
                                          ),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                              ],
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Filterselectoption(
                                      selectWhat: "Date",
                                      onClick: showDialogForSubject,
                                    ),
                                    Filterselectoption(
                                      selectWhat: "Year",
                                      onClick: showDialogForYear,
                                    ),
                                    Filterselectoption(
                                      selectWhat: "Month",
                                      onClick: showDialogForMonth,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, -2),
                            ),
                          ],
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: GlobalColors.grey5D),
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 20,
                              color: Colors.grey,
                            ),
                            GestureDetector(
                              onTap: () {
                                onApply(selectedFilteredExam,
                                    selectedFilteredSubject);
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: GlobalColors.grey5D),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentExam = selectedExam;
    final currentSubject = selectedSubject;

    if (currentExam != null && currentSubject != null) {
      selectedPage = Sscwinnerswidget(
        examTitle: "$currentExam $currentSubject",
        exam: widget.exam,
      );
    } else if (currentExam == null && currentSubject == null) {
      selectedPage = Latestrankerspage(
        examTitle: "Latest Exam Ranks",
        exam: widget.exam,
      );
    } else if (widget.exam == "upsc" && currentExam != null) {
      selectedPage = Sscwinnerswidget(
        examTitle: "UPSC $currentExam",
        exam: widget.exam,
      );
    } else {
      selectedPage = Center(
        child: Text(
          "Select Both Preferred Exam and Subject",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: examsByCategory[widget.exam]!.map((exam) {
                  bool isSelected = exam == selectedExam;
                  return TextButton(
                    onPressed: () {
                      setState(() {
                        if (selectedExam == exam) {
                          selectedExam = null;
                          selectedSubject = null;
                        } else {
                          selectedExam = exam;
                          selectedSubject = null;
                        }
                      });
                    },
                    style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: EdgeInsets.zero),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.01),
                      padding: EdgeInsets.symmetric(
                          vertical: Screensize.height * 0.005,
                          horizontal: Screensize.width * 0.05),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        border: isSelected
                            ? Border.all(
                                color: GlobalColors.buttonColor, width: 1)
                            : null,
                      ),
                      child: Text(
                        exam,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: isSelected
                                ? GlobalColors.buttonColor
                                : Colors.black),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            if (selectedExam != null && widget.exam != "upsc") ...[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: subjectByCategory[currentExam]!.map((subject) {
                    bool isSelected = selectedSubject == subject;
                    return TextButton(
                      onPressed: () {
                        setState(() {
                          selectedSubject = subject;
                        });
                      },
                      style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.zero),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Screensize.width * 0.01),
                        padding: EdgeInsets.symmetric(
                            vertical: Screensize.height * 0.005,
                            horizontal: Screensize.width * 0.05),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          border: isSelected
                              ? Border.all(
                                  color: GlobalColors.buttonColor, width: 1)
                              : null,
                        ),
                        child: Text(
                          subject,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: isSelected
                                  ? GlobalColors.buttonColor
                                  : Colors.black),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
            Padding(
              padding: EdgeInsets.only(top: Screensize.height * 0.01),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Screensize.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rankers",
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        showFilterBottomSheet(context,
                            (filteredExam, filteredSubject) {
                          print("\n$filteredExam $filteredSubject\n");
                          setState(() {
                            selectedExam = filteredExam;
                            selectedSubject = filteredSubject;
                          });
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Screensize.width * 0.05,
                            vertical: Screensize.height * 0.005),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right: Screensize.width * 0.03),
                              child: Icon(
                                Icons.filter_4_rounded,
                                size: 10.r,
                              ),
                            ),
                            Text(
                              "Filter",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: GlobalColors.grey5D,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(child: selectedPage!)
          ],
        ),
      ),
    );
  }
}
