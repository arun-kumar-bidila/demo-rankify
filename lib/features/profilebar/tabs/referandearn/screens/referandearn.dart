import 'package:flutter/material.dart';
import 'package:rankify/features/profilebar/tabs/referandearn/widgets/referalinfo.dart';
import 'package:rankify/features/profilebar/tabs/referandearn/widgets/referandearnpagetop.dart';
import 'package:rankify/features/profilebar/tabs/referandearn/widgets/waytoearncoins.dart';
import 'package:rankify/features/profilebar/tabs/referandearn/widgets/yourreferralcodewidget.dart';
import 'package:rankify/utils/screen_size.dart';

class Referandearn extends StatelessWidget {
  const Referandearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.05,
          horizontal: Screensize.width * 0.05,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //firstcontainer
          Referandearnpagetop(),
          //secondcontainer
          Yourreferralcodewidget(),
          //thirdcontainer
          Referalinfo(),
          //fourthcontainer
          Flexible(child: Waytoearncoins()),

          ]
          
        ),
      ),
    );
  }
}
