import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Exambar extends StatefulWidget {
  final currentIndex;
  final Function(int) onTap;
  const Exambar({super.key, required this.currentIndex, required this.onTap});

  @override
  State<Exambar> createState() => _ExambarState();
}

class _ExambarState extends State<Exambar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(-2, 5),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildHomeItem(0, "SSC", "assets/ssc.png"),
          _buildHomeItem(1, "BANKS", "assets/rbi.png"),
          _buildHomeItem(2, "RRB", "assets/rrb.png"),
          _buildHomeItem(3, "UPSC", "assets/upsc.png"),
          _buildHomeItem(4, "APPSC", "assets/appsc.png"),
          _buildHomeItem(5, "OTHERS", "icons/more.png"),
        ],
      ),
    );
  }

  Widget _buildHomeItem(int index, String label, String iconPath) {
    return InkWell(
      onTap: () => widget.onTap(index),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
        child:
            
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  iconPath,
                  height: Screensize.height * 0.03,
               
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Screensize.height * 0.005),
                  child: Text(
                    label,
                    style: TextStyle(
                        fontSize: 10.sp,
                        color:  Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),

            if (widget.currentIndex == index) ...[
              Row(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        color: GlobalColors.buttonColor,
                        borderRadius: BorderRadius.circular(30)),
                    width: Screensize.width * (0.07),
                    height: Screensize.height * (0.005),
                  ),
                ],
              ),
            ]
  
          ],
        ),
      ),
    );
  }
}
