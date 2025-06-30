import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Rankifycards extends StatefulWidget {
  const Rankifycards({super.key});

  @override
  State<Rankifycards> createState() => _RankifycardsState();
}

class _RankifycardsState extends State<Rankifycards> {
  List<Map<String, dynamic>> rankifyWorksData = [
    {
      "step": "Step 1",
      "color":Colors.green,
      "imagePath":"assets/svg/parent_tick.svg",
      "title": "Register & Select Exam",
      "description":
          "Create your account for free and choose from SSC, RRB, Banking, SI & PC, DSC, or other competitive exams.",
      "key_points": [
        "Sign Up for Free",
        "Choose Your Exam Category",
        "Access Exam-Specific Content"
      ],
      "example":
          "If you're preparing for SSC exams, you will get exam schedules, question banks, and rank analytics specific to SSC subjects."
    },
    {
      "step": "Step 2",
      "color":Colors.blue,
       "imagePath":"assets/svg/shield.svg",
      "title": "Join Live AI-Proctored Exam",
      "description":
          "Select an exam, pay entry fee, and take the test in our secure exam mode with AI proctoring.",
      "key_points": [
        "Secure Exam Mode",
        "AI Face Detection",
        "UPI/Wallet Payment"
      ],
      "example":
          "Our AI system monitors face & eye movements to prevent cheating and ensure fair competition."
    },
    {
      "step": "Step 3",
      "color":Colors.purple,
       "imagePath":"assets/svg/edit_pen.svg",
      "title": "Attempt Smart MCQ Exam",
      "description":
          "50 randomized questions with varying difficulty levels and live progress tracking.",
      "key_points": ["Live Timer", "Auto-Save Answers", "Progress Tracking"],
      "example":
          "No two students get the same set of questions, ensuring complete fairness in assessment."
    },
    {
      "step": "Step 4",
      "color":Colors.deepOrangeAccent,
       "imagePath":"assets/svg/results.svg",
      "title": "Get Instant Results",
      "description":
          "Receive immediate ranking among thousands of participants with detailed analytics.",
      "key_points": [
        "Instant Ranking",
        "Performance Analytics",
        "Subject-wise Analysis"
      ],
      "example":
          "Compare your performance against 10,000+ participants instantly after exam completion."
    },
    {
      "step": "Step 5",
      "color":Colors.yellow,
       "imagePath":"assets/svg/trophy.svg",
      "title": "Earn Rewards",
      "description":
          "Top 50% get cashback (₹50), others earn coins for next attempts.",
      "key_points": ["Cashback Rewards", "Coin System", "Monthly Analytics"],
      "example":
          "Even if you don't rank high, earn coins to reduce future exam fees."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: ListView.builder(
          itemCount: rankifyWorksData.length,
          itemBuilder: (context, index) {
            var section = rankifyWorksData[index];
            return _buildRankifyCard(
                section["step"],
                section["title"],
                section["description"],
                section["example"],
                section["key_points"],
                section["color"],
                section["imagePath"]);
          }),
    );
  }

  Widget _buildRankifyCard(String step, String title, String subtitle,
      String example, List<dynamic> key_points,Color color,String imagepath) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 29,horizontal: 9),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.symmetric(
            horizontal: 9,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                step,
                style: TextStyle(
                    fontSize: 18,
                    color: GlobalColors.grey5E,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: color,
            child: SvgPicture.asset(
              imagepath,
              height: 20,
              color: Colors.white,
            ),
          ),
          children: [
            Divider(
              color: Colors.grey.withOpacity(0.5),
              // height: Screensize.height * 0.0001,
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                subtitle,
                style: TextStyle(
                    fontSize: 18,
                    color: GlobalColors.grey5D,
                    fontWeight: FontWeight.w400),
                softWrap: true,
              ),
            ),
            Column(
              children: key_points.map<Widget>((point) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Padding(
                       padding:
                      EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.check_circle,
                          color: color,
                          size: 20,
                        ),
                      ),
                      Text(
                        point,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: GlobalColors.grey5D),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 9),
              decoration: BoxDecoration(
                  color: GlobalColors.greyF2,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10),
                    child: Text(
                      "Example",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 10),
                    child: Text(
                      example,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: GlobalColors.grey5D),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
