import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/bottombar/tabs/community/widgets/communitychat.dart';
import 'package:rankify/features/dashboard/screens/dashboard.dart';
import 'package:rankify/utils/screen_size.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //page title "community"
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.02,
                  horizontal: Screensize.width * 0.05),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 25.r,
                      color: GlobalColors.grey25,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Rankify SSC Community",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: GlobalColors.grey25),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // Members online info container
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.02,
                  horizontal: Screensize.width * 0.05),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCommunityFeature(
                      title: "2.3K",
                      subtitle: "Members",
                      titleColor: Colors.black,
                      hasBorder: true),
                  SizedBox(
                    height: Screensize.height * 0.05,
                    child: VerticalDivider(
                      color: GlobalColors.greyD9,
                      thickness: 1,
                    ),
                  ),
                  _buildCommunityFeature(
                      title: "256",
                      subtitle: "Online",
                      titleColor: Colors.green,
                      hasBorder: true),
                  SizedBox(
                    height: Screensize.height * 0.05,
                    child: VerticalDivider(
                      color: GlobalColors.greyD9,
                      thickness: 1,
                    ),
                  ),
                  _buildCommunityFeature(
                      title: "17.5K",
                      subtitle: "Posts",
                      titleColor: Colors.black,
                      hasBorder: false)
                ],
              ),
            ),

            //chat screen
            Expanded(child: Communitychat()),

            //message input container
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.01,
                  horizontal: Screensize.width * 0.05),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border:
                              Border.all(color: GlobalColors.greyFA, width: 1)),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              cursorColor: GlobalColors.buttonColor,
                              decoration: InputDecoration(
                                  hintText: "Type your Message...",
                                  hintStyle: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: GlobalColors.grey9F),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: Screensize.height * 0.01,
                                      horizontal: Screensize.width * 0.03)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Screensize.width * 0.03,
                            ),
                            child: Icon(
                              Icons.attach_file,
                              size: 20.r,
                              color: GlobalColors.grey9F,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: Screensize.width * 0.03),
                    padding: EdgeInsets.symmetric(
                        vertical: Screensize.height * 0.01,
                        horizontal: Screensize.width * 0.02),
                    decoration: BoxDecoration(
                        color: GlobalColors.greyD9, shape: BoxShape.circle),
                    child: Icon(
                      Icons.send,
                      size: 25.r,
                      color: GlobalColors.buttonColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCommunityFeature(
      {required title,
      required subtitle,
      required titleColor,
      required hasBorder}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18.sp, fontWeight: FontWeight.w600, color: titleColor),
        ),
        Text(subtitle,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: GlobalColors.grey80)),
      ],
    );
  }
}
