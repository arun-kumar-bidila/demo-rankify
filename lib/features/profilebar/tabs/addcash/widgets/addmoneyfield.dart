import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Addmoneyfield extends StatefulWidget {
  const Addmoneyfield({super.key});

  @override
  State<Addmoneyfield> createState() => _AddmoneyfieldState();
}

class _AddmoneyfieldState extends State<Addmoneyfield> {
  List<Map<String, dynamic>> addMoney = [
    {"amount": "50", "bonusAmount": "5"},
    {"amount": "100", "bonusAmount": "10"},
    {"amount": "250", "bonusAmount": "20"},
    {"amount": "300", "bonusAmount": "30"},
     {"amount": "300", "bonusAmount": "30"},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Add Money",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: TextField(
            cursorColor: GlobalColors.buttonColor,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
                hintText: "₹ Enter Amount",
                hintStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.grey80,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 30,
                  vertical: 16,)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:10),
          child: Row(
            children: [
              Text(
                "Quick Option",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: GlobalColors.grey80),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                child: Icon(
                  Icons.info,
                  size: 15,
                  color: GlobalColors.grey80,
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var card in addMoney) ...[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  padding: EdgeInsets.symmetric(
                     vertical: 20,
                     horizontal: 10
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Text(
                        "₹ ${card["amount"]}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: GlobalColors.grey38),
                      ),
                      Container(
                         margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: GlobalColors.pinkF3),
                        child: Row(
                          children: [
                            Text(
                              "+₹${card["bonusAmount"]} Bonus",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800,color: GlobalColors.buttonColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]
            ],
          ),
        )
      ],
    );
  }
}
