import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/dashboard/screens/dashboard.dart';
import 'package:rankify/features/dashboard/screens/examtabs/ssc/paymentmethods.dart';
import 'package:rankify/features/dashboard/screens/examtabs/ssc/winnings.dart';
import 'package:rankify/utils/screen_size.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: GlobalColors.backgroundColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Screensize.init(context);
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return MediaQuery(
        data:MediaQuery.of(context).copyWith(textScaleFactor:1.0),

        child: MaterialApp(
          theme: ThemeData(
            // textTheme: GoogleFonts.interTextTheme(),
            scaffoldBackgroundColor: GlobalColors.backgroundColor,
            useMaterial3: true,
            appBarTheme: AppBarTheme(color: GlobalColors.backgroundColor),
          ),
          debugShowCheckedModeBanner: false,
          home: child,
        ),
      );
      },
      child: Winnings(),
    );
  }
}
