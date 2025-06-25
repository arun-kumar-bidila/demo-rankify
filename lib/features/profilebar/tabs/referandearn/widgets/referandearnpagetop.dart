import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Referandearnpagetop extends StatelessWidget {
  const Referandearnpagetop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric( 
        horizontal: 11,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFA91241),GlobalColors.buttonColor],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              )),
              Text("Welcome to Rankify\nReferral Dashboard",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
              Opacity(
                opacity: 0,
                // dummy spacer to aust width
                child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
              )
            ],
          ),
          
          Padding(
           padding: EdgeInsets.only(
            top: 5,
              bottom: 10,
            ),
            child: Row(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/svg/coin_stack.svg' // TODO: CHNG THE ICON
                ),
                Text("2500",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Text("Total Coins Earned",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),


        ],
      ),
    );
  }
}