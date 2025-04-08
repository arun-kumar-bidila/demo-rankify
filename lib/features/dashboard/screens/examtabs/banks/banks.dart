import 'package:flutter/material.dart';

import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';



class Banks extends StatefulWidget {
  final Function(bool) onFullScreenChange;
  const Banks({super.key,required this.onFullScreenChange});

  @override
  State<Banks> createState() => _BanksState();
}

class _BanksState extends State<Banks> {


 

  @override
  Widget build(BuildContext context) {
    return 
     
      Column(
        children: [
          Expanded(
            child: Container(
              child: Homescreen(whichHome: "Banks"),
            ),
          ),
          // if(_page!=3)...[
          // Container(
          //   child: Bottombar(
          //     currentIndex: _page,
          //     onTap: updatePage,
          //   ),
          // ),
        // ],
        ],
      
    );
  }
}
