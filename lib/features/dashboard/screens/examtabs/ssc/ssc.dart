import 'package:flutter/material.dart';
import 'package:rankify/features/bottombar/tabs/home/homescreen.dart';


class Ssc extends StatefulWidget {
  final Function(bool) onFullScreenChange;
  const Ssc({super.key, required this.onFullScreenChange});

  @override
  State<Ssc> createState() => _SscState();
}

class _SscState extends State<Ssc> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: Homescreen(
              whichHome: "ssc",
            ),
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
