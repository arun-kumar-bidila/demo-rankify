import 'package:flutter/material.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/upcomingexams.dart';

class Rrb extends StatelessWidget {
  const Rrb({super.key});

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