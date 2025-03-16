import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Livechat extends StatefulWidget {
  const Livechat({super.key});

  @override
  State<Livechat> createState() => _LivechatState();
}

class _LivechatState extends State<Livechat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
                    children: [
          _buildMessage(
              "Hello! welcome to Rankify Support.How can we help you today?",
              false),
          _buildMessage(
              "Payment issues",
              true),
          _buildMessage(
              "Thank you for your message. Our support team will assist you shortly.",
              false),
                    ],
                  ),
        ),
        Container(
          color: GlobalColors.greyF8,
          padding: EdgeInsets.symmetric(
            vertical: Screensize.height * 0.01,
            // horizontal: Screensize.width * 0.05,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    backgroundColor: GlobalColors.greyF0),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.005,
                    horizontal: Screensize.width * 0.02,
                  ),
                  child: Text(
                    "How do I purchase books?",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: GlobalColors.grey80,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    backgroundColor: GlobalColors.greyF0),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.005,
                    horizontal: Screensize.width * 0.02,
                  ),
                  child: Text(
                    "Payment issues",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: GlobalColors.grey80,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            vertical: Screensize.height * 0.01,
            // horizontal: Screensize.width * 0.05,
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Screensize.height * 0.005,
                    horizontal: Screensize.width * 0.03,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      hintStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: GlobalColors.grey80,
                      ),
                      filled: true,
                      fillColor: GlobalColors.greyF8,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none,
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: Screensize.height * 0.02,
                        horizontal: Screensize.width * 0.02,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: GlobalColors.greyD9, shape: BoxShape.circle),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Screensize.height * 0.015,
                      horizontal: Screensize.width * 0.04,
                    ),
                    child: Icon(
                      Icons.send,
                      size: 30.r,
                      color: GlobalColors.buttonColor,
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMessage(String text, bool isUser) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          top: Screensize.height * 0.02,
          bottom: Screensize.height * 0.02,
          left: isUser ? Screensize.width * 0.3 : Screensize.width * 0.05,
          right: isUser ? Screensize.width * 0.05 : Screensize.width * 0.3,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: Screensize.width * 0.03,
            vertical: Screensize.height * 0.01),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: isUser ? Radius.circular(3.r) : Radius.circular(10.r),
              topLeft: isUser ? Radius.circular(10.r) : Radius.circular(3.r),
              bottomLeft: Radius.circular(10.r),
              bottomRight: Radius.circular(10.r),
            ),
            color: isUser ? GlobalColors.buttonColor : Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: isUser ? Colors.white : GlobalColors.grey5E),
            ),
            if(!isUser)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
              "14:20 ",
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: isUser ? Colors.white : GlobalColors.grey5E),
            ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
