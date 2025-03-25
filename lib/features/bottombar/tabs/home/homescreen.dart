import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/appsc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/banks.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/others.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/rrb.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/ssc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/screens/upsc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers.dart';
import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers2.dart';

import 'package:rankify/features/dashboard/screens/examtabs/widgets/upcomingexams2.dart';
import 'package:rankify/features/dashboard/widgets/exambar.dart';
import 'package:rankify/utils/screen_size.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Screensize.width*0.05),
      // color: Colors.amber,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
             //toprankers
          Toprankers2(),
          // Toprankers()
            
             //upcoming exams
          Upcomingexams2(),
          // Upcomingexams(),
        
          ]
          
        
        ),
      ),
    );
  }
}
