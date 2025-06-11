import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rankify/utils/screen_size.dart';
import 'package:badges/badges.dart' as badges;

class Rankerdetails extends StatefulWidget {
  final String name;
  final String location;
  final String marks;
  final String rank;
  final String won;
  final Color color;
  final Color backgroundColor;
  const Rankerdetails(
      {super.key,
      required this.name,
      required this.marks,
      required this.rank,
      required this.location,
      required this.won,
      required this.color,
      required this.backgroundColor});

  @override
  State<Rankerdetails> createState() => _RankerdetailsState();
}

class _RankerdetailsState extends State<Rankerdetails> {
  @override
  Widget build(BuildContext context) {
    String longText = "CGL Reasoning";
    String shortText =
        longText.length > 10 ? '${longText.substring(0, 8)}..' : longText;

    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: Screensize.width * 0.01),
      padding: EdgeInsets.symmetric(
          horizontal: Screensize.width * 0.02,
          vertical: Screensize.height * 0.005),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                offset: Offset(0, 0.1),
                blurRadius: 0,
                spreadRadius: 0),
          ]),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: Screensize.width * 0.01),
            child: Column(
              children: [
                badges.Badge(
                  badgeContent: Text(
                    "#${widget.rank}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 6.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  badgeStyle: badges.BadgeStyle(
                      padding: EdgeInsets.all(3), badgeColor: widget.color),
                  position: badges.BadgePosition.topStart(top: -5, start: 0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: widget.color, width: 1)),
                    child: CircleAvatar(
                      radius: Screensize.width * 0.04,
                      backgroundImage: AssetImage(
                        "assets/dp.jpg",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontSize: 11.sp, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.02,
                          vertical: Screensize.height * 0.002),
                      decoration: BoxDecoration(
                          color:widget.backgroundColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(right: Screensize.width * 0.01),
                            child: Icon(Icons.location_on_rounded,
                                size: 10.r, color: widget.color),
                          ),
                          Text(
                            "TS",
                            style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w500,
                                color: widget.color),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Screensize.height * 0.005),
                  child: Row(
                    children: [
                      Text(
                        "Marks: ${widget.marks}",
                        style: TextStyle(
                            fontSize: 9.sp, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Screensize.width * 0.01),
                        width: 1,
                        height: 10,
                        color: Colors.black45,
                      ),
                      Text(
                        "Rank:0${widget.rank}",
                        style: TextStyle(
                            fontSize: 9.sp, fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        color: widget.color,
                        size: 15.r,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(
                      shortText,
                      style: TextStyle(
                          fontSize: 9.sp, fontWeight: FontWeight.w400),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.01,
                          vertical: Screensize.height * 0.001),
                      decoration: BoxDecoration(
                          color:widget.backgroundColor,
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                              width: 0.3, color: widget.color)),
                      child: Text(
                        "won ${widget.won}",
                        style: TextStyle(
                            fontSize: 6.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
