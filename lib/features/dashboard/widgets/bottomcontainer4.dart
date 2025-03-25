// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rankify/utils/screen_size.dart';

// class Bottomcontainer2 extends StatefulWidget {
//   final String addOn1;
//   final Color color;
//   final Color textColor;
//   final String addOn1Label;
//   final String addOn2;
//   final String addOn2Label;
//   final String addOn3Label;
//   final String addOn3;

//   const Bottomcontainer2({
//     super.key,
//     required this.addOn1,
//     required this.addOn2,
//     required this.addOn3,
//     required this.addOn1Label,
//     required this.addOn2Label,
//     required this.addOn3Label,
//     required this.color,
//     required this.textColor,
//   });

//   @override
//   State<Bottomcontainer2> createState() => _Bottomcontainer2State();
// }

// class _Bottomcontainer2State extends State<Bottomcontainer2> {
//   OverlayEntry? _overlayEntry;
//   GlobalKey? _activeKey; // Track the currently active tooltip

//   void _toggleTooltip(BuildContext context, String tooltip, TooltipAlign align, GlobalKey key) {
//     if (_activeKey == key) {
//       _hideTooltip(); // If the same icon is tapped again, hide tooltip
//       return;
//     }

//     _hideTooltip(); // Hide any existing tooltip before showing a new one

//     final renderBox = key.currentContext!.findRenderObject() as RenderBox;
//     final offset = renderBox.localToGlobal(Offset.zero);
//     final size = renderBox.size;
//     double screenWidth = MediaQuery.of(context).size.width;

//     // Calculate tooltip position
//     double tooltipX = _getTooltipXPosition(align, offset.dx, size.width, screenWidth);

//     _overlayEntry = OverlayEntry(
//       builder: (context) {
//         return Stack(
//           children: [
//             Positioned(
//               left: tooltipX,
//               top: offset.dy - Screensize.height*0.05, // Position above the icon
//               child: Material(
//                 color: Colors.transparent,
//                 child: ConstrainedBox(
//                   constraints: BoxConstraints(
//                     maxWidth: screenWidth * 0.5, // Prevent overflow
//                   ),
//                   child: Container(
//                     padding: EdgeInsets.all(8),
//                     decoration: ShapeDecoration(
//                       color: Colors.black,
//                       shape: TooltipShape(align: align),
//                     ),
//                     child: Text(
//                       tooltip,
//                       style: TextStyle(color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );

//     Overlay.of(context).insert(_overlayEntry!);
//     _activeKey = key;
//   }

//   void _hideTooltip() {
//     _overlayEntry?.remove();
//     _overlayEntry = null;
//     _activeKey = null;
//   }

//   double _getTooltipXPosition(TooltipAlign align, double iconX, double iconWidth, double screenWidth) {
//     double tooltipWidth = screenWidth * 0.4; // Approximate width of tooltip

//     if (align == TooltipAlign.left) {
//       return (iconX - 10).clamp(0, screenWidth - tooltipWidth); // Prevents left overflow
//     } else if (align == TooltipAlign.center) {
//       return (iconX + iconWidth / 2 - tooltipWidth / 2).clamp(0, screenWidth - tooltipWidth);
//     } else {
//       return (iconX + iconWidth - tooltipWidth + 10).clamp(0, screenWidth - tooltipWidth); // Prevents right overflow
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: Screensize.height * 0.015,
//         horizontal: Screensize.width * 0.05,
//       ),
//       decoration: BoxDecoration(
//         color: widget.color,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(20.r),
//           bottomRight: Radius.circular(20.r),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             blurRadius: 2,
//             spreadRadius: 0,
//             offset: Offset(0, -1),
//           )
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           _buildFeature(
//             featureImage: widget.addOn1,
//             featureLabel: widget.addOn1Label,
//             tooltip: "Top ranker wins ₹25,000/-",
//             triangleAlign: TooltipAlign.left,
//           ),
//           _buildFeature(
//             featureImage: widget.addOn2,
//             featureLabel: widget.addOn2Label,
//             tooltip: "Top 50% earns Cash Prizes",
//             triangleAlign: TooltipAlign.center,
//           ),
//           _buildFeature(
//             featureImage: widget.addOn3,
//             featureLabel: widget.addOn3Label,
//             tooltip: "Bottom 50% Earn Coins",
//             triangleAlign: TooltipAlign.right,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFeature({
//     required String featureImage,
//     required String featureLabel,
//     required String tooltip,
//     required TooltipAlign triangleAlign,
//   }) {
//     GlobalKey iconKey = GlobalKey();

//     return GestureDetector(
//       key: iconKey,
//       onTap: () => _toggleTooltip(context, tooltip, triangleAlign, iconKey),
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
//               style: TextStyle(
//                 fontSize: 10.sp,
//                 fontWeight: FontWeight.w400,
//                 color: widget.textColor,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// enum TooltipAlign { left, center, right }

// class TooltipShape extends ShapeBorder {
//   final TooltipAlign align;

//   TooltipShape({required this.align});

//   @override
//   EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

//   @override
//   Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
//     return Path();
//   }

//   @override
//   Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
//     double triangleWidth = 10.0;
//     double triangleHeight = 5.0;

//     double triangleOffset;
//     if (align == TooltipAlign.left) {
//       triangleOffset = rect.left + rect.width * 0.2; // Slightly shifted right
//     } else if (align == TooltipAlign.center) {
//       triangleOffset = rect.center.dx - (triangleWidth / 2); // Centered
//     } else {
//       triangleOffset = rect.right - rect.width * 0.2 - triangleWidth; // Slightly shifted left
//     }

//     return Path()
//       ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(8))) // Tooltip box
//       ..moveTo(triangleOffset, rect.bottom) // Triangle starting point
//       ..relativeLineTo(triangleWidth, 0) // Top of triangle
//       ..relativeLineTo(-triangleWidth / 2, triangleHeight) // Left side of triangle
//       ..relativeLineTo(-triangleWidth / 2, -triangleHeight) // Right side of triangle
//       ..close();
//   }

//   @override
//   void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

//   @override
//   ShapeBorder scale(double t) {
//     return this;
//   }
// }
