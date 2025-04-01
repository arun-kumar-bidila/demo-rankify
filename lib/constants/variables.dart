import 'package:rankify/utils/screen_size.dart';

class Variables {
  static double get top => Screensize.height * 0.02;
  static double get side => Screensize.width * 0.05;
  static double get rowspace => Screensize.width * 0.03;
  static double get rowwidgetspace => Screensize.width * 0.015;
  static double get columnspace => Screensize.height * 0.01;

  //image heights
  static double get imagesmall => Screensize.height * 0.03;
  static double get imagemedium => Screensize.height * 0.04;
  static double get imagelarge => Screensize.height * 0.05;
  static double get imageverylarge => Screensize.height * 0.1;
}
