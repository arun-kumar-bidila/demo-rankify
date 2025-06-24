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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
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
        ),
      ),
    );
  }
}
