import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      "imagePath":"icons/group.png",
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
       "imagePath":"icons/shield.png",
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
       "imagePath":"icons/open-book.png",
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
       "imagePath":"icons/question.png",
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
       "imagePath":"icons/trophy.png",
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
      height: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: Screensize.height * 0.02,
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
      margin: EdgeInsets.only(bottom: Screensize.height * 0.01),
      padding: EdgeInsets.symmetric(vertical: Screensize.height*0.02),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.symmetric(
            vertical: Screensize.height * 0.01,
            horizontal: Screensize.width * 0.05,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                step,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: GlobalColors.grey5E,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          leading: CircleAvatar(
            radius: Screensize.height * 0.025,
            backgroundColor: color,
            child: Image.asset(
              imagepath,
              height: Screensize.height * 0.03,
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
              padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
              child: Text(
                subtitle,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: GlobalColors.grey5D,
                    fontWeight: FontWeight.w400),
                softWrap: true,
              ),
            ),
            Column(
              children: key_points.map<Widget>((point) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
                  child: Row(
                    children: [
                      Padding(
                       padding:
                      EdgeInsets.symmetric(horizontal: Screensize.width * 0.02),
                        child: Icon(
                          Icons.check_circle,
                          color: color,
                          size: 20.r,
                        ),
                      ),
                      Text(
                        point,
                        style: TextStyle(
                            fontSize: 16.sp,
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
                  vertical: Screensize.height * 0.01,
                  horizontal: Screensize.width * 0.02),
              decoration: BoxDecoration(
                  color: GlobalColors.greyF2,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Screensize.height * 0.01),
                    child: Text(
                      "Example",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: Screensize.height * 0.01),
                    child: Text(
                      example,
                      style: TextStyle(
                          fontSize: 12.sp,
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
