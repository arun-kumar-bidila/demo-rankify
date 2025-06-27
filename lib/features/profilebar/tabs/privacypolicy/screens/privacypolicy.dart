import 'package:flutter/material.dart';

import 'package:rankify/features/profilebar/tabs/privacypolicy/widgets/pagetopcontainer.dart';
import 'package:rankify/features/profilebar/tabs/privacypolicy/widgets/policycardscontainer.dart';
import 'package:rankify/utils/screen_size.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Pagetopcontainer(),
              Expanded(child: PolicyCardsContainer())
            ],
          ),
        ),
      ),
    );
  }
}
