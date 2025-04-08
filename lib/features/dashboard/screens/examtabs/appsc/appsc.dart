import 'package:flutter/material.dart';

import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';

// import 'package:rankify/features/dashboard/screens/examtabs/widgets/toprankers.dart';


class Appsc extends StatefulWidget {
  final Function(bool) onFullScreenChange;
  const Appsc({super.key,required this.onFullScreenChange});

  @override
  State<Appsc> createState() => _RrbState();
}

class _RrbState extends State<Appsc> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: Container(
              child: Homescreen(whichHome: "APPSC"),
            ),
          ),
        //   if(_page!=3)...[
        //   Container(
        //     child: Bottombar(
        //       currentIndex: _page,
        //       onTap: updatePage,
        //     ),
        //   ),
        // ],
        ],
    
    );
  }
}
