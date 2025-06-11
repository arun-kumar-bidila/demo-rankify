import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';

class Confirmexam extends StatelessWidget {
  final int attempted;
  final int marked;
  final int notAttempted;
  const Confirmexam({super.key,required this.attempted,required this.marked,required this.notAttempted});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: Variables.top,
            left: Variables.side,
            right: Variables.side,
          ),
          child: Column(
            spacing: Variables.top,
            children: [
              Column(
                spacing: Variables.columnspace,
                children: [
                  Text(
                    "Confirm Exam Submission",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: GlobalColors.grey25),
                  ),
                  Text(
                    "Please review your progress before submitting the exam.",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: GlobalColors.grey25),
                  ),
                ],
              ),
              SizedBox(
                height: Variables.top,
              ),
              Column(
                spacing: Variables.columnspace,
                children: [
                  _buildSubmissionFeature(
                      featureColor: Colors.green,
                      icon: Icons.check_circle_outline,
                      featureTitle: "Attempted",
                      featureValue: attempted),
                  _buildSubmissionFeature(
                      featureColor: Colors.amber,
                      icon: Icons.help_outline,
                      featureTitle: "Marked for Review",
                      featureValue: marked),
                  _buildSubmissionFeature(
                      featureColor: Colors.red,
                      icon: Icons.info_outline,
                      featureTitle: "Not Attempted",
                      featureValue: notAttempted),
                ],
              ),
              // SizedBox(
              //   height: Variables.top
              // ),
              Column(
                spacing: Variables.columnspace,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Questions: 12",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: GlobalColors.grey80),
                      ),
                      Text(
                        "22%",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: GlobalColors.grey80),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: Container(
                      color: GlobalColors.greyDA,
                      width: double.infinity,
                      height: 10,
                      child: Stack(
                        children: [
                          FractionallySizedBox(
                            widthFactor: 2 / 10,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  gradient: GlobalColors.progressBar),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              CustomButton(
                  text: "Return to Exam",
                  onTap: () {
                    Navigator.pop(context);
                  },
                  color: GlobalColors.buttonColor,
                  textColor: Colors.white),
              CustomButton(
                  text: "Submit Exam",
                  onTap: () {
                    _buildSubmissionDialog(context);
                  },
                  color: GlobalColors.buttonColor,
                  textColor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubmissionFeature(
      {required Color featureColor,
      required IconData icon,
      required String featureTitle,
      required featureValue}) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Variables.top, horizontal: Variables.rowspace),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: featureColor, width: 1)),
      child: Row(
        spacing: Variables.rowspace,
        children: [
          Icon(
            icon,
            size: 30.r,
            color: featureColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Variables.columnspace,
            children: [
              Text(
                featureTitle,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: GlobalColors.grey25),
              ),
              Text(
                featureValue.toString(),
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: GlobalColors.grey25),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _buildSubmissionDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: Variables.top, horizontal: Variables.side),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: Variables.columnspace,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: Colors.black,
                            size: 25.r,
                          ))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: Variables.top,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Variables.columnspace,
                            horizontal: Variables.rowspace),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: GlobalColors.greenEE),
                        child: Icon(
                          Icons.check_circle_outline,
                          size: 40.r,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Successfully Completed Your Exam",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: GlobalColors.grey25),
                      ),
                      Text(
                        "Thank you for completing the exam. Your responses have been recorded.",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.grey25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: GlobalColors.buttonColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              )),
                          child: Text(
                            "View Results",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
