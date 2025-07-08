import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Pagetopcontainer extends StatelessWidget {
  const Pagetopcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      padding: EdgeInsets.symmetric( 
        horizontal: 11,
        vertical: 30,
      ),
      decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFFA91241),GlobalColors.buttonColor],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter),
      borderRadius: BorderRadius.circular(10)),
      child: Column(
        spacing: 5,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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

             Image.asset(
              "icons/shield.png",
              height: Screensize.height * 0.05,
              color: Colors.white,
            ),


              Opacity(
                opacity: 0,
                child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
              )
            ],
          ),

          Text(
            "RANKIFY",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white
            ),
          ),



          Text(
            "Privacy Policy",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
            ),
          ),

          Text(
            "Last Updated : January 29,2025",
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
