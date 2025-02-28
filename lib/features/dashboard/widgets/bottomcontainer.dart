import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/utils/screen_size.dart';

class Bottomcontainer extends StatelessWidget {
  const Bottomcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildBottomContainerItem("icons/premium-badge.png", "₹25,000/-"),
        _buildBottomContainerItem("icons/wallet-filled-money-tool.png", "50%"),
        _buildBottomContainerItem("icons/profit.png", "50%"),
      ],
    );
  }

  Widget _buildBottomContainerItem(String imagePath, String valueText) {
    return Container(
      width: Screensize.width * 0.3,
      // color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: Screensize.width * 0.04,
            height: Screensize.height * 0.018,
          ),
          SizedBox(
            width: Screensize.width * 0.02,
          ),
          Text(
            valueText,
            style: TextStyle(fontSize: 12.sp),
          )
        ],
      ),
    );
  }
}
