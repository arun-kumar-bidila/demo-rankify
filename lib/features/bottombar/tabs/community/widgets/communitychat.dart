import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Communitychat extends StatefulWidget {
  const Communitychat({super.key});

  @override
  State<Communitychat> createState() => _CommunitychatState();
}

class _CommunitychatState extends State<Communitychat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.05,vertical: Screensize.height*0.02),
      child: SingleChildScrollView (
        child: Column(
          children: [
            _buildMessage(
                imagePath: "assets/dp.jpg",
                messageFromOthers: true,
                name: "Sravani",
                message: "Any updates on SSC Hall ticket?",
                time: "Read 10:02"),
            _buildMessage(
                icon: Icons.done_all,
                messageFromOthers: false,
                message: "I thinks it will be on 25-03-2025 @4:30PM",
                time: "Read 10:02"),
            _buildMessage(
                imagePath: "assets/dp.jpg",
                messageFromOthers: true,
                name: "Rani",
                message:
                    "Which is the best book for SSC General Studies for CGL Exam?",
                time: "Read 10:02"),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage(
      {String? imagePath,
      bool? messageFromOthers,
      String? name,
      String? message,
      String? time,
      IconData? icon}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
      padding: messageFromOthers == true
          ? EdgeInsets.only(right: Screensize.width * 0.05)
          : EdgeInsets.only(left: Screensize.width * 0.05),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (messageFromOthers == true) ...[
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.02,
                          // vertical: Screensize.height * 0.005
                          ),
                      child: CircleAvatar(
                        radius: Screensize.height * 0.015,
                        backgroundImage: AssetImage(imagePath!),
                      ),
                    )
                  ],
                ),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: messageFromOthers == true
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.03,
                          vertical: Screensize.height * 0.01),
                     
                      decoration: BoxDecoration(
                        color: messageFromOthers == true
                            ? Colors.white
                            : GlobalColors.buttonColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                          bottomLeft: messageFromOthers == true
                              ? Radius.circular(0)
                              : Radius.circular(10.r),
                          bottomRight: messageFromOthers == true
                              ? Radius.circular(10.r)
                              : Radius.circular(0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (name != null) ...[
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            )
                          ],
                          Text(
                            message!,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: messageFromOthers == true
                                    ? Colors.black
                                    : Colors.white),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (messageFromOthers == false) ...[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.01),
                      child: Icon(
                        icon,
                        size: 20.r,
                        color: GlobalColors.green50,
                      ),
                    )
                  ],
                ),
              ],
            ],
          ),
          Row(
            mainAxisAlignment: messageFromOthers == true
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            children: [
              Container(
                 margin: EdgeInsets.symmetric(
                          vertical: Screensize.height * 0.005),
                child: Padding(
                  padding: messageFromOthers == true
                      ? EdgeInsets.only(left: Screensize.width * 0.14)
                      : EdgeInsets.only(right: Screensize.width * 0.07),
                  child: Text(
                    time!,
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
