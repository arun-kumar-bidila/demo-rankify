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
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: GlobalColors.greyF0),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text(
                    "How do I purchase books?",
                    style: TextStyle(
                      fontSize: 14,
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: GlobalColors.greyF0),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                   vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Payment issues",
                    style: TextStyle(
                      fontSize: 14,
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
            vertical: 5,
            // horizontal: Screensize.width * 0.05,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: GlobalColors.grey80,
                      ),
                      filled: true,
                      fillColor: GlobalColors.greyF8,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      isDense: true,
                      // contentPadding: EdgeInsets.symmetric(
                      //   vertical: Screensize.height * 0.02,
                      //   horizontal: Screensize.width * 0.02,
                      // ),
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: GlobalColors.greyD9, shape: BoxShape.circle),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.send,
                          size: 20,
                          color: GlobalColors.buttonColor,
                        ),
                      ),
                    ))
              ],
            ),
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
          top: 10,
          bottom: 10,
          left: isUser ? 120 : 16,
          right: isUser ? 16 : 120,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: isUser ? Radius.circular(3) : Radius.circular(10),
              topLeft: isUser ? Radius.circular(10) : Radius.circular(3),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: isUser ? GlobalColors.buttonColor : Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 16,
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
                  fontSize: 12,
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
