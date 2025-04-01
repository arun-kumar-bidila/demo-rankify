import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/constants/variables.dart';

class Winningsinfo extends StatefulWidget {
  const Winningsinfo({super.key});

  @override
  State<Winningsinfo> createState() => _WinningsinfoState();
}

class _WinningsinfoState extends State<Winningsinfo> {
  List<Map<String, dynamic>> winningsinfo = [
    {"imagePath": "icons/premium-badge.png", "label": "₹25,000/-"},
    {"imagePath": "icons/wallet-filled-money-tool.png", "label": "50%"},
    {"imagePath": "icons/profit.png", "label": "50%"},
  ];

  List<Map<String, dynamic>> ranks = [
    {"rank": "#4", "money": "₹4,000"},
    {"rank": "#5", "money": "₹1,500"},
    {"rank": "#6", "money": "₹1,000"},
    {"rank": "#7", "money": "₹900"},
    {"rank": "#8", "money": "₹750"},
    {"rank": "#9", "money": "₹700"},
    {"rank": "#10", "money": "₹500"},
    {"rank": "#10", "money": "₹500"},
    {"rank": "#10", "money": "₹500"},
    {"rank": "#10", "money": "₹500"},
    {"rank": "#10", "money": "₹500"},
    {"rank": "#10", "money": "₹500"},
    {"rank": "#10", "money": "₹500"},
    {"rank": "#10", "money": "₹500"},
    {"rank": "#10", "money": "₹500"},

  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: GlobalColors.greyD9, width: 1),
                ),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: Variables.top, horizontal: Variables.rowspace),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: Variables.top,
                children: [
                  Text(
                    "₹5 Lakhs",
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                        color: GlobalColors.grey25),
                  ),
                  Column(
                    spacing: Variables.columnspace,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "8568 Left",
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: GlobalColors.buttonColor),
                          ),
                          Text(
                            "10000 Slots",
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: GlobalColors.grey25),
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.r),
                        child: Container(
                          width: double.infinity,
                          height: 10,
                          decoration: BoxDecoration(
                            color: GlobalColors.greyDA,
                          ),
                          child: Stack(
                            children: [
                              FractionallySizedBox(
                                widthFactor: 5 / 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      gradient: GlobalColors.progressBar),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
      
                  // SizedBox(
                  //   height: Variables.columnspace,
                  // ),
                  CustomButton(
                      text: "JOIN ₹50",
                      onTap: () {},
                      color: GlobalColors.buttonColor,
                      textColor: Colors.white),
                  // SizedBox(
                  //   height: Variables.columnspace,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var item in winningsinfo) ...[
                        Row(
                          children: [
                            Image.asset(
                              item["imagePath"],
                              height: Variables.top,
                            ),
                            SizedBox(
                              width: Variables.rowwidgetspace,
                            ),
                            Text(
                              item["label"],
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: GlobalColors.grey25),
                            )
                          ],
                        )
                      ]
                    ],
                  ),
                  Text(
                    "Winnings",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: GlobalColors.buttonColor,
                        fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Variables.top, horizontal: Variables.rowspace),
                child: Column(
                  spacing: Variables.columnspace,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rank",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey5D),
                        ),
                        Text(
                          "Money / Coins",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey5D),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                           spacing: Variables.columnspace,
                          children: [
                             _buildRank(
                            rank: "Rank",
                            money: "₹25,000",
                            isTop: true,
                            topColor: Colors.amber),
                        _buildRank(
                            rank: "Rank",
                            money: "₹10,000",
                            isTop: true,
                            topColor: Colors.grey),
                        _buildRank(
                            rank: "Rank",
                            money: "₹7,000",
                            isTop: true,
                            topColor: GlobalColors.buttonColor),
                        for (var item in ranks) ...[
                          
                          _buildRank(rank: item["rank"], money: item["money"],isTop: false),
                        ]
                        
                          ],
                        ),
                      ),
                    )
                   
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRank(
      {required String rank,
      required String money,
      bool? isTop,
      Color? topColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (isTop!) ...[
              Icon(
                Icons.emoji_events_outlined,
                size: 20.r,
                color: topColor,
              ),
             
            ],
             SizedBox(
                width: Variables.rowwidgetspace,
              ),
            Text(
              rank,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.grey25),
            )
          ],
        ),
        Text(
          money,
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: GlobalColors.grey25),
        )
      ],
    );
  }
}
