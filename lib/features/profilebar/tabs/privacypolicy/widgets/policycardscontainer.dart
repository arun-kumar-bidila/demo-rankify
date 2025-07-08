import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class PolicyCardsContainer extends StatelessWidget {
  final List<Map<String, dynamic>> policyData = const [
    {
      "title": "1.Introduction",
      "subtitle": "Welcome to Rankify! Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your personal information.",
      "bulletPoints":[],
      "iconPath":"icons/clock.png"
    },
    {
      "title": "2.Information We Collect",
      "subtitle": "We collect the following types of data:",
      "bulletPoints": [
        "Personal Information (e.g., Name, Email, Contact Number).",
        "Usage Data (e.g., App interactions, IP address, Device information).",
        "Cookies & Tracking Technologies.",
        "Facial Recognition & Biometric Data."
      ],
      "iconPath":"icons/clock.png"
    },
    {
      "title": "3.Facial Recognition & Biometric Data",
      "subtitle":
          "We may collect and process facial recognition data to enhance security and authentication within the Rankify App.",
      "bulletPoints": [
        "Your facial data is used solely for login and verification purposes.",
        "We use secure encryption methods to store biometric data.",
        "Your biometric data is never shared with third parties.",
        "Users can request deletion of their facial data by contacting support@rankify.com."
      ],
      "iconPath": "icons/clock.png"
    },
    {
      "title": "4.How We Use Your Data",
      "subtitle": "We use your information to:",
      "bulletPoints": [
        "Provide and improve our services.",
        "Enhance user experience and app performance.",
        "Comply with legal obligations."
      ],
      "iconPath": "icons/clock.png"
    },
    {
      "title": "5.Data Protection",
      "subtitle":
          "We implement security measures to protect your data, including encryption and secure servers.",
      "bulletPoints": [],
      "iconPath": "icons/clock.png"
    },
    {
      "title": "6.Your Rights",
      "subtitle": "You have the right to:",
      "bulletPoints": [
        "Access, update, or delete your data.",
        "Opt-out of marketing emails.",
        "Request data portability."
      ],
      "iconPath": "icons/clock.png"
    },
    {
      "title": "7.Contact Us",
      "subtitle":
          "If you have any questions, contact us at support@rankify.com.",
      "bulletPoints": [],
      "iconPath": "icons/clock.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      // color: Colors.amber,
      // padding: EdgeInsets.zero,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: policyData.length,
        itemBuilder: (context, index) {
          var section = policyData[index];
          return _buildExpansionCard(
            title: section["title"],
            subtitle: section["subtitle"],
            bulletPoints: section["bulletPoints"],
            iconPath: section["iconPath"],
            context: context,
          );
        },
      ),
    );
  }

  Widget _buildExpansionCard({
    required String title,
    required String subtitle,
    required List<dynamic> bulletPoints,
    required String iconPath,
    required BuildContext context,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: Screensize.height * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.symmetric(
            horizontal: Screensize.width * 0.05,
            vertical: Screensize.height * 0.01,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),
          leading: CircleAvatar(
            radius: Screensize.width * 0.05,
            backgroundColor: GlobalColors.buttonColor,
            child: Image.asset(
              iconPath,
              color: Colors.white,
              height: Screensize.height * 0.03,
            ),
          ),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                subtitle,
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            if (bulletPoints.isNotEmpty) ...[
              SizedBox(height: Screensize.height * 0.01),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: bulletPoints.map<Widget>((point) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Screensize.height * 0.002,horizontal: Screensize.width*0.01),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "• ",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Expanded(
                          child: Text(
                            point,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
