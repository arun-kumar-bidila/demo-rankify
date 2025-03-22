import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/buildexamcard.dart';
import 'package:rankify/utils/screen_size.dart';

class Viewallexams extends StatelessWidget {
  const Viewallexams({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Upcoming Exams",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
        ),
        scrolledUnderElevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Screensize.width * 0.02,
            vertical: Screensize.height * 0.02),
        child: Buildexamcard(layoutheight: double.infinity),
      ),
    );
  }
}
