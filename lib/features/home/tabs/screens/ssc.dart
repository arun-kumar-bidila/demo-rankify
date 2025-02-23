import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/home/tabs/widgets/toprankers.dart';
import 'package:rankify/features/home/tabs/widgets/upcomingexams.dart';

class Ssc extends StatelessWidget {
  const Ssc({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 10.w,right: 10.w),
      child: Column(
        
        children: [
          
//toprankers
         Toprankers(),
          
          

          //upcoming exams
          Upcomingexams()
        ],
      ),
    );
  }
}