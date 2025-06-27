import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class PolicyCardsContainer extends StatelessWidget {
  final List<Map<String, dynamic>> policyData = const [
    {
      "title": "1.Introduction",
      "subtitle": "Welcome to Rankify! Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your personal information.",
      "bulletPoints":[],
      "iconPath":"assets/svg/info.svg"
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
      "iconPath":"assets/svg/pie.svg"
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
      "iconPath": "assets/svg/face_scan.svg"
    },
    {
      "title": "4.How We Use Your Data",
      "subtitle": "We use your information to:",
      "bulletPoints": [
        "Provide and improve our services.",
        "Enhance user experience and app performance.",
        "Comply with legal obligations."
      ],
      "iconPath": "assets/svg/bar_graph.svg"
    },
    {
      "title": "5.Data Protection",
      "subtitle":
          "We implement security measures to protect your data, including encryption and secure servers.",
      "bulletPoints": [],
      "iconPath": "assets/svg/shield.svg"
    },
    {
      "title": "6.Your Rights",
      "subtitle": "You have the right to:",
      "bulletPoints": [
        "Access, update, or delete your data.",
        "Opt-out of marketing emails.",
        "Request data portability."
      ],
      "iconPath": "assets/svg/rights.svg"
    },
    {
      "title": "7.Contact Us",
      "subtitle":
          "If you have any questions, contact us at support@rankify.com.",
      "bulletPoints": [],
      "iconPath": "assets/svg/contact.svg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            childrenPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: GlobalColors.buttonColor,
              child: SvgPicture.asset(
                iconPath,
                color: Colors.white,
                height: 20,
              ),
            ),
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  subtitle,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              if (bulletPoints.isNotEmpty) ...[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: bulletPoints.map<Widget>((point) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 1,horizontal: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "• ",
                            style: TextStyle(fontSize: 16),
                          ),
                          Expanded(
                            child: Text(
                              point,
                              style: TextStyle(fontSize: 16),
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
      ),
    );
  }
}
