import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rankify/features/auth/screens/phonesignup.dart';
// import 'package:rankify/auth/screens/Sucessful.dart';
// import 'package:rankify/auth/screens/examCategory.dart';
// import 'package:rankify/auth/screens/language.dart';
// import 'package:rankify/auth/screens/signin.dart';
// import 'package:rankify/auth/screens/signup.dart';
// import 'package:rankify/auth/screens/auth.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/dashboard/screens/dashboard.dart';
// import 'package:rankify/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(),
          scaffoldBackgroundColor: GlobalColors.backgroundColor,
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: AppBarTheme(color: GlobalColors.backgroundColor),
        ),
        debugShowCheckedModeBanner: false,
        home: child,
      ),
      child: Dashboard(),
    );
  }
}
