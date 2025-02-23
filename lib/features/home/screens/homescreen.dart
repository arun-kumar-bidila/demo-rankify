import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/home/tabs/screens/appsc.dart';
import 'package:rankify/features/home/tabs/screens/banks.dart';
import 'package:rankify/features/home/tabs/screens/others.dart';
import 'package:rankify/features/home/tabs/screens/rrb.dart';
import 'package:rankify/features/home/tabs/screens/ssc.dart';
import 'package:rankify/features/home/tabs/screens/upsc.dart';
import 'package:rankify/features/home/widgets/topbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _page = 0;

  List<Widget> pages =[
    const Ssc(),
    const Banks(),
    
    const Rrb(),
    const Upsc(),
    const Appsc(),
    const Others()
       
    ];
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
      
            //topbar
            Topbar(currentIndex: _page, onTap: updatePage),
      
            //somespace between them
      
            SizedBox(height: 10.h,),
      
            //body
            Container(child: pages[_page])
          ],
        
      
        
      ),
    );
  }
}
