import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/appsc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/banks.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/others.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/rrb.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/ssc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/upsc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/upcomingexams.dart';
import 'package:rankify/features/dashboard/widgets/topbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Column(
        children: [
           //toprankers
        Toprankers(),
          
           //upcoming exams
        Upcomingexams(),

        ]
        

      ),
    );
  }
}
