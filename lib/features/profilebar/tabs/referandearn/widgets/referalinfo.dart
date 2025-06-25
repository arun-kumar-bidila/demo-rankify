import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Referalinfo extends StatelessWidget {
  const Referalinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: GlobalColors.buttonColor),),
              Text("Friends Referred",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF808080)),)
            ],
          ),
          SizedBox(
            height: 45,
            child: VerticalDivider(
              color: Colors.black,
             
              thickness: 1,
            
            ),
          ),

          Column(
            children: [
              Text("1000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: GlobalColors.buttonColor),),
              Text("Coins Earned",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF808080)),)

            ],
          )
        ],
      ),
    );
  }
}