import 'package:flutter/material.dart';

import 'package:rankify/features/dashboard/widgets/appbar.dart';

import 'package:rankify/features/dashboard/screens/examtabs/appsc/appsc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/banks/banks.dart';
import 'package:rankify/features/dashboard/screens/examtabs/others/others.dart';
import 'package:rankify/features/dashboard/screens/examtabs/rrb/rrb.dart';
import 'package:rankify/features/dashboard/screens/examtabs/ssc/ssc.dart';
import 'package:rankify/features/dashboard/screens/examtabs/upsc/upsc.dart';
import 'package:rankify/features/dashboard/widgets/exambar.dart';
import 'package:rankify/features/dashboard/widgets/exambarfilteroptions.dart';
import 'package:rankify/utils/screen_size.dart';
import 'package:rankify/utils/userdata.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _page = 0;

  bool _isFullScreen = false;

  List<String> pageExam = ["ssc", "banks", "rrb", "upsc", UserData().stateExam!.toLowerCase(), "ssc"];
  String pageExamName = UserData().category!.toLowerCase();

  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      Ssc(
        onFullScreenChange: toggleFullScreen,
      ),
      Banks(
        onFullScreenChange: toggleFullScreen,
      ),
      Rrb(
        onFullScreenChange: toggleFullScreen,
      ),
      Upsc(
        onFullScreenChange: toggleFullScreen,
      ),
      Appsc(
        onFullScreenChange: toggleFullScreen,
      ),
      Others(
        onFullScreenChange: toggleFullScreen,
      ),
    ];
    Map<String, int> pageIndexByCategory = {
      "ssc": 0,
      "banks": 1,
      "rrb": 2,
      "upsc": 3,
      UserData().stateExam!: 4,
      "others": 5
    };
    print("UserData category: ${UserData().category}");

    _page = pageIndexByCategory[UserData().category]!;
  }

  void toggleFullScreen(bool isFullScreen) {
    setState(() {
      _isFullScreen = isFullScreen;
    });
  }

  void updatePage(int page) {
    setState(() {
      _page = page;
      _isFullScreen = false;
      pageExamName = pageExam[page];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: Screensize.height * 0.01),
        child: Column(
          children: [
            if (!_isFullScreen) ...[
              DashboardAppbar(),
              Exambar(currentIndex: _page, onTap: updatePage),
            ],
            Exambarfilteroptions(exam: pageExamName),
            Flexible(child: pages[_page])
          ],
        ),
      ),
    ));
  }
}
