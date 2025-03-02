import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Referandearnpagetop extends StatelessWidget {
  const Referandearnpagetop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.symmetric(vertical: Screensize.height*0.01),
      padding: EdgeInsets.symmetric(vertical: Screensize.height*0.02),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFA91241),GlobalColors.buttonColor],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(10.r)
      ),
      child: Column(
        children: [
          Text("Welcome to Rankify Referral",style: TextStyle(fontSize: 20.sp,color: Colors.white,fontWeight: FontWeight.bold),),
          Padding(
           padding: EdgeInsets.only(
              bottom: Screensize.height * 0.01,
            ),
            child: Text("Dashboard",style: TextStyle(fontSize: 20.sp,color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          Padding(
           padding: EdgeInsets.only(
              bottom: Screensize.height * 0.01,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.question_mark,color: Colors.amber,),
                SizedBox(width: Screensize.width*0.02,),
                Text("2500",style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Text("Total Coins Earned",style: TextStyle(fontSize: 12.sp,color: Colors.white,fontWeight: FontWeight.bold),),


        ],
      ),
    );
  }
}