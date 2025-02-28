import 'package:flutter/material.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/upcomingexams.dart';

class Banks extends StatelessWidget {
  const Banks({super.key});

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