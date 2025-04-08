import 'package:flutter/material.dart';

import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';



class Rrb extends StatefulWidget {
  final Function(bool) onFullScreenChange;
  const Rrb({super.key,required this.onFullScreenChange});

  @override
  State<Rrb> createState() => _RrbState();
}

class _RrbState extends State<Rrb> {


  @override
  Widget build(BuildContext context) {
    return 
       Column(
        children: [
          Expanded(
            child: Container(
              child:Homescreen(whichHome: "RRB"),
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
