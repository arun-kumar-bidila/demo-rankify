import 'package:flutter/material.dart';
import 'package:rankify/constants/variables.dart';
import 'package:rankify/features/liveexam/widgets/liveexamquestion.dart';
import 'package:rankify/features/liveexam/widgets/liveexamtop.dart';

class Liveexamscreen extends StatefulWidget {
  const Liveexamscreen({super.key});

  @override
  State<Liveexamscreen> createState() => _LiveexamscreenState();
}

class _LiveexamscreenState extends State<Liveexamscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding:  EdgeInsets.only(top: Variables.top),
        child: Column(
          spacing: Variables.top,
          children: [
            Liveexamtop(),
            Liveexamquestion()
          ],
          
        ),
      )),
    );
  }
}