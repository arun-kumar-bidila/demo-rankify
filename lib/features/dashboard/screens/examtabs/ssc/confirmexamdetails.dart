import 'package:flutter/material.dart';
import 'package:rankify/features/dashboard/screens/examtabs/ssc/widgets/confirmexaminfo.dart';
import 'package:rankify/features/dashboard/screens/examtabs/ssc/widgets/confirmexamtitle.dart';

import 'package:rankify/utils/screen_size.dart';

class Confirmexamdetails extends StatefulWidget {
  const Confirmexamdetails({super.key});

  @override
  State<Confirmexamdetails> createState() => _ConfirmexamdetailsState();
}

class _ConfirmexamdetailsState extends State<Confirmexamdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Screensize.width * 0.05),
          child: Column(
            children: [
              Confirmexamtitle(),
              Confirmexaminfo(),
            ],
          ),
        ),
      ),
    );
  }
}
