import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';
import 'package:rankify/features/profilebar/tabs/winnerslist/widgets/examdata.dart';

class Exambarfilteroptions extends StatefulWidget {
  final String exam;
  const Exambarfilteroptions({super.key, required this.exam});

  @override
  State<Exambarfilteroptions> createState() => _ExambarfilteroptionsState();
}

class _ExambarfilteroptionsState extends State<Exambarfilteroptions> {
  String? selectedExam;
  String? selectedSubject;
  Widget? selectedPage;
  String? selectedFilteredExam;
  String? selectedFilteredSubject;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: examsByCategory[widget.exam]!.map((exam) {
              bool isSelected = exam == selectedFilteredExam;
              return TextButton(
                onPressed: () {
                  setState(() {
                    selectedFilteredExam = exam;
                    selectedFilteredSubject = null;
                  });
                },
                style: TextButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero),
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: Screensize.width * 0.01),
                  padding: EdgeInsets.symmetric(
                      vertical: Screensize.height * 0.005,
                      horizontal: Screensize.width * 0.05),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    border: isSelected
                        ? Border.all(color: GlobalColors.buttonColor, width: 1)
                        : null,
                  ),
                  child: Row(children: [
                    Text(
                      exam,
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
            subjectByCategory[selectedFilteredExam] != null &&
            widget.exam != "upsc") ...[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: subjectByCategory[selectedFilteredExam]!.map(
                (subject) {
                  bool isSelected = selectedFilteredSubject == subject;
                  return TextButton(
                    onPressed: () {
                      setState(() {
                        selectedFilteredSubject = subject;
                        
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
                        "$subject",
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
        ]
      ]),
    );
  }
}
