// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rankify/utils/screen_size.dart';

// class Bottomcontainer2 extends StatefulWidget {
//   final String addOn1;
//    final Color color;
//   final Color textColor;
//   final String addOn1Label;
//   final String addOn2;
//   final String addOn2Label;
//   final String addOn3Label;
//   final String addOn3;

//   const Bottomcontainer2(
//       {super.key,
//       required this.addOn1,
//       required this.addOn2,
//       required this.addOn3,
//       required this.addOn1Label,
//       required this.addOn2Label,
//       required this.addOn3Label,
//       required this.color,
//       required this.textColor});

//   @override
//   State<Bottomcontainer2> createState() => _Bottomcontainer2State();
// }

// class _Bottomcontainer2State extends State<Bottomcontainer2> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//           vertical: Screensize.height * 0.015,
//           horizontal: Screensize.width * 0.05),
//       // height: 20,
//       // width: double.infinity,
//       decoration: BoxDecoration(
//           color: widget.color,
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(20.r),
//               bottomRight: Radius.circular(20.r)),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 blurRadius: 2,
//                 spreadRadius: 0,
//                 offset: Offset(0, -1))
//           ]),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           _buildFeature(featureImage: widget.addOn1, featureLabel: widget.addOn1Label),
//           _buildFeature(featureImage: widget.addOn2, featureLabel: widget.addOn2Label),
//           _buildFeature(featureImage: widget.addOn3, featureLabel: widget.addOn3Label),
//         ],
//       ),
//     );
//   }

//   Widget _buildFeature({required featureImage, required featureLabel}) {
//     return Tooltip(
//       message: "This is tooltip message",
//       triggerMode: TooltipTriggerMode.tap,
      
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5.r),
//         color: Colors.black
//       ),
//       textStyle: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Colors.white),
//       preferBelow: false,
//       child: Row(
//         children: [
//           Image.asset(
//             featureImage,
//             height: Screensize.height * 0.02,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: Screensize.width * 0.02),
//             child: Text(
//               featureLabel,
//               style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400,color: widget.textColor),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
