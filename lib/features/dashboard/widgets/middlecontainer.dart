import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Middlecontainer extends StatefulWidget {
  const Middlecontainer({super.key});

  @override
  State<Middlecontainer> createState() => _MiddlecontainerState();
}

class _MiddlecontainerState extends State<Middlecontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Screensize.height * 0.055,
        bottom: Screensize.height * 0.055,
        left: Screensize.width * 0.04,
        right: Screensize.width * 0.04,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //first row
          _firstRow(),

          //second row
          _secondRow(),

          // _thirdRow()
          _thirdRow(),
        ],
      ),
    );
  }

  Widget _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // color: Colors.amber,

          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "icons/calendar.png",
                width: Screensize.width * 0.05,
                height: Screensize.height * 0.02,
              ),
              SizedBox(
                width: Screensize.width * 0.01,
              ),
              Text(
                "15 Jan 2025",
                style: TextStyle(fontSize: 12.sp),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 5.r, right: 5.r),
          decoration: BoxDecoration(
              color: Color.fromRGBO(252, 229, 209, 1),
              borderRadius: BorderRadius.circular(5.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "icons/hour-glass.png",
                width: Screensize.width * 0.05,
                height: Screensize.height * 0.02,
              ),
              Text(
                "4d 7h 10m",
                style: TextStyle(
                    fontSize: 12.sp, color: Color.fromRGBO(224, 0, 0, 1)),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              // color: Colors.amber,
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "icons/time.png",
                width: Screensize.width * 0.05,
                height: Screensize.height * 0.02,
              ),
              SizedBox(
                width: Screensize.width * 0.01,
              ),
              Text(
                "10:00 AM",
                style: TextStyle(fontSize: 12.sp),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _secondRow() {
    return Padding(
      padding:  EdgeInsets.only(left: Screensize.width*0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "₹5,00,000/-",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          Container(
            height: Screensize.height * 0.03,
            width: Screensize.width * 0.2,
            // padding: EdgeInsets.only(top:2.r,bottom: 2.r),
            decoration: BoxDecoration(
                color: GlobalColors.buttonColor,
                borderRadius: BorderRadius.circular(5.r)),
            child: Center(
              child: Text(
                "₹50/-",
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _thirdRow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "8,000 available",style: TextStyle(fontSize: 8.sp,color: GlobalColors.buttonColor),
            ),
            Row(
              children: [
                Text(
              "10,000",style: TextStyle(fontSize: 8.sp),
            ),
            SizedBox(width: Screensize.width*0.01,),
            Container(
              width: Screensize.width*0.03,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(2.r)
              ),
              child:Center(
                child: Text(
                "M",style: TextStyle(fontSize: 6.sp),
                            ),
              ), 
            ),

              ],
            )
          ],

        ),
        SizedBox(height: Screensize.height*0.005,),
        ClipRRect(
          borderRadius: BorderRadius.circular(5.r),
          child: Container(
            height: Screensize.height*0.01,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5.r)
            ),
            child: Stack(
              children: [
                FractionallySizedBox(
                  widthFactor: 5/10,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient:LinearGradient(colors: [Colors.red.shade700, Colors.orange.shade700],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight) ,
                      borderRadius: BorderRadius.circular(5.r)
                    ),
                  ),

                )
              ],
            ),
           
          ),
        )
      ],
    );
  }
}
