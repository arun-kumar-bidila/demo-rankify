import 'package:flutter/material.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/privacypolicy/widgets/pagetopcontainer.dart';
import 'package:rankify/features/profilebar/tabs/privacypolicy/widgets/policycardscontainer.dart';
import 'package:rankify/utils/screen_size.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.05,
          horizontal: Screensize.width * 0.05,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: Screensize.height*0.02),
              child: Pagetopcontainer(),
            ),
          Expanded(child: PolicyCardsContainer())

            
          ],
        ),
      ),
    );
  }
}
