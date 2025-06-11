import 'package:flutter/material.dart';

import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';


class Others extends StatefulWidget {
  final Function(bool) onFullScreenChange;
  const Others({super.key, required this.onFullScreenChange});

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
 
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Expanded(
            child: Container(
              child: Homescreen(whichHome: "Others"),
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
