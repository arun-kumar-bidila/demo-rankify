import 'package:flutter/material.dart';

import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';



class Upsc extends StatefulWidget {
  final Function(bool) onFullScreenChange;
  const Upsc({super.key,required this.onFullScreenChange});

  @override
  State<Upsc> createState() => _UpscState();
}

class _UpscState extends State<Upsc> {


  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Expanded(
            child: Container(
              child: Homescreen(whichHome: "UPSC"),
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
