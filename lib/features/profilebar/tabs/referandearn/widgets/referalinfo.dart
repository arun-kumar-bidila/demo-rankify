import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Referalinfo extends StatelessWidget {
  const Referalinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(top: Screensize.height * 0.02),
      padding: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.01,
          horizontal: Screensize.width * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("5",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: GlobalColors.buttonColor),),
              Text("Friends Referred",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Color(0xFF808080)),)
            ],
          ),
          SizedBox(
            height: Screensize.height*0.05,
            child: VerticalDivider(
              color: Colors.black,
             
              thickness: Screensize.width*0.001,
            
            ),
          ),

          Column(
            children: [
              Text("1000",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: GlobalColors.buttonColor),),
              Text("Coins Earned",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Color(0xFF808080)),)

            ],
          )
        ],
      ),
    );
  }
}