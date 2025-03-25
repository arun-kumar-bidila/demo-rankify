import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/utils/screen_size.dart';

class Bottomcontainer2 extends StatefulWidget {
  final String addOn1;
  final Color color;
  final Color textColor;
  final String addOn1Label;
  final String addOn2;
  final String addOn2Label;
  final String addOn3Label;
  final String addOn3;

  const Bottomcontainer2({
    super.key,
    required this.addOn1,
    required this.addOn2,
    required this.addOn3,
    required this.addOn1Label,
    required this.addOn2Label,
    required this.addOn3Label,
    required this.color,
    required this.textColor,
  });

  @override
  State<Bottomcontainer2> createState() => _Bottomcontainer2State();
}

class _Bottomcontainer2State extends State<Bottomcontainer2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Screensize.height * 0.015,
        horizontal: Screensize.width * 0.05,
      ),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 2,
            spreadRadius: 0,
            offset: Offset(0, -1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFeature(
              featureImage: widget.addOn1,
              featureLabel: widget.addOn1Label,
              tooltip: "Top ranker wins 25,000",
              triangleAlign: TooltipAlign.leftShifted),
          _buildFeature(
              featureImage: widget.addOn2,
              featureLabel: widget.addOn2Label,
              tooltip: "Top 50% earns cash prize",
              triangleAlign: TooltipAlign.center),
          _buildFeature(
              featureImage: widget.addOn3,
              featureLabel: widget.addOn3Label,
              tooltip: "Bottom 50% earns coins",
              triangleAlign: TooltipAlign.rightShifted),
        ],
      ),
    );
  }

  Widget _buildFeature({
    required String featureImage,
    required String featureLabel,
    required String tooltip,
    required TooltipAlign triangleAlign,
  }) {
    return Tooltip(
      message: tooltip,
      triggerMode: TooltipTriggerMode.tap,
      showDuration: Duration(seconds: 3),
      decoration: ShapeDecoration(
        color: Colors.black,
        shape: TooltipShape(align: triangleAlign),
      ),
      textStyle: TextStyle(
          color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.w600),
      verticalOffset: 20,
      preferBelow: false,
      child: Row(
        children: [
          Image.asset(
            featureImage,
            height: Screensize.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: Screensize.width * 0.02),
            child: Text(
              featureLabel,
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: widget.textColor),
            ),
          )
        ],
      ),
    );
  }
}

enum TooltipAlign { leftShifted, center, rightShifted }

class TooltipShape extends ShapeBorder {
  final TooltipAlign align;

  TooltipShape({required this.align});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    double triangleWidth = 10.0;
    double triangleHeight = 5.0;

    double triangleOffset;
    if (align == TooltipAlign.leftShifted) {
      triangleOffset = rect.left + rect.width * 0.3; // Slightly right from left
    } else if (align == TooltipAlign.center) {
      triangleOffset = rect.center.dx - (triangleWidth / 2); // Centered
    } else {
      triangleOffset = rect.right - rect.width * 0.3; // Slightly left from right
    }

    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(8))) // Tooltip box
      ..moveTo(triangleOffset, rect.bottom) // Triangle starting point
      ..relativeLineTo(triangleWidth, 0) // Top of triangle
      ..relativeLineTo(-triangleWidth / 2, triangleHeight) // Left side of triangle
      
      ..relativeLineTo(-triangleWidth / 2, -triangleHeight) // Right side of triangle
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return this;
  }
}
