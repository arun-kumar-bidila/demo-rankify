import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/upcomingexams.dart';

class Ssc extends StatelessWidget {
  const Ssc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //toprankers
        Toprankers(),
          
        //upcoming exams
        Upcomingexams()
      ],
    );
  }
}
