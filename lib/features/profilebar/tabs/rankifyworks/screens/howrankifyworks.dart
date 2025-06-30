import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/rankifyworks/widgets/rankifycards.dart';
import 'package:rankify/utils/screen_size.dart';




class Howrankifyworks extends StatefulWidget {
  const Howrankifyworks({super.key});

  @override
  State<Howrankifyworks> createState() => _HowrankifyworksState();
}

class _HowrankifyworksState extends State<Howrankifyworks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 30,
                ),
                decoration: BoxDecoration(
                    gradient: GlobalColors.primaryGradient,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Text(
                            "How Rankify Works",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "AI-Powered Competitive Exam Platfom",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                         _buildTopInfo("1K", "Daily Users"),
                         _buildTopInfo("50+", "Live Exam"),
                         _buildTopInfo("99%", "Success Rate")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Rankifycards())
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopInfo(String title, String subtitle) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
