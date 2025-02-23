import 'package:flutter/material.dart';

class ScreenSize {
  final BuildContext context;
  ScreenSize(this.context);

  double get Width => MediaQuery.of(context).size.width;
  double get Height => MediaQuery.of(context).size.height;
}
