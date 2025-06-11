import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';


class Confirmexaminfo extends StatefulWidget {
  const Confirmexaminfo({super.key});

  @override
  State<Confirmexaminfo> createState() => _ConfirmexaminfoState();
}

class _ConfirmexaminfoState extends State<Confirmexaminfo> {
  String selectedLanguage = "Select Language";
  bool isChecked = false;
  String Price = "50";

  final ExpansionTileController _expansionTileController =
      ExpansionTileController();

  List<String> languages = [
    "English",
    "हिंदी",
    "తెలుగు",
    "தமிழ்",
    "മലയാളം",
    "ಕನ್ನಡ "
  ];

  void changeLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: Variables.columnspace),
        padding: EdgeInsets.only(
            left: Variables.rowspace,
            top: Variables.top,
            right: Variables.rowspace),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Variables.top,
            children: [
              Text(
                "Redeem Coins",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: GlobalColors.grey25),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Variables.rowspace,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: GlobalColors.greyD9, width: 1)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.r,
                          color: Colors.amber,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: Variables.side),
                          child: Text(
                            "Use Coins: 10",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey25,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                    if (isChecked) {
                                      Price = "40";
                                    } else {
                                      Price = "50";
                                    }
                                  });
                                },
                                side: BorderSide(
                                    color: GlobalColors.greyD9, width: 2),
                                activeColor: GlobalColors.buttonColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Variables.rowspace,
                ),
                child: Text(
                  "1 Coin = ₹1",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: GlobalColors.grey5D),
                ),
              ),
              Text(
                "Details of Exam",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: GlobalColors.grey25),
              ),
              Column(
                spacing: Variables.columnspace,
                children: [
                  _buildDetailFeature(
                      icon: Icons.currency_rupee,
                      info: "Entry Fee : 50/-",
                      isMainFeature: true),
                  _buildDetailFeature(
                      icon: Icons.event_outlined,
                      info: "25 January 2025, 10:00 AM",
                      isMainFeature: true),
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Padding(
                          padding:
                              EdgeInsets.only(right: Variables.rowwidgetspace),
                          child: _buildDetailFeature(
                              icon: Icons.info_outline,
                              info: "Total Questions: 50",
                              isMainFeature: false),
                        )),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: Variables.rowwidgetspace),
                            child: _buildDetailFeature(
                                icon: Icons.access_time_rounded,
                                info: "Duration: 60 Min",
                                isMainFeature: false),
                          ),
                        )
                      ],
                    ),
                  ),
                  _buildDetailFeature(
                      icon: Icons.payments,
                      info: "Price Money: 5,00,000",
                      isMainFeature: true),
                  _buildDetailFeature(
                      icon: Icons.emoji_events_rounded,
                      info:
                          "Reward: Top 50% get cashback. Bottom 50% will earn coins.",
                      isMainFeature: true),
                  Container(
                    decoration: BoxDecoration(
                      color: GlobalColors.greyF5,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        controller: _expansionTileController,
                        title: Text(
                          selectedLanguage,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey5D),
                        ),
                        children: [
                          for (int i = 0; i < languages.length; i++)
                            Container(
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed: () {
                                  changeLanguage(languages[i]);
                                  _expansionTileController.collapse();
                                },
                                child: Text(
                                  languages[i],
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: GlobalColors.grey5D),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Variables.rowspace),
                    child: Text(
                      "₹$Price",
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: GlobalColors.grey5D),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: GlobalColors.buttonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r)),
                    ),
                    child: Text(
                      "Pay Now",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Variables.columnspace,)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailFeature(
      {required IconData icon,
      required String info,
      required bool isMainFeature}) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Variables.columnspace, horizontal: Variables.mediumrow),
      decoration: BoxDecoration(
        color: GlobalColors.greyF5,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Variables.halfcolumn, horizontal: Variables.smallrow),
            decoration: isMainFeature
                ? BoxDecoration(
                    color: GlobalColors.pinkF3, shape: BoxShape.circle)
                : null,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Variables.rowspace),
              child: Icon(
                icon,
                color: isMainFeature
                    ? GlobalColors.buttonColor
                    : GlobalColors.grey5D,
                size: 25.r,
              ),
            ),
          ),
          Expanded(
            child: Text(
              info,
              style: TextStyle(
                  fontSize: isMainFeature ? 16.sp : 12.sp,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.grey5D),
            ),
          )
        ],
      ),
    );
  }
}
