import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/widgets/morefromrankify.dart';
import 'package:rankify/features/profilebar/widgets/mybalance.dart';
import 'package:rankify/features/profilebar/widgets/profilefeatures.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //profile dp row
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20,
                          color: GlobalColors.grey19,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: GlobalColors.orange1A, width: 2)),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            "assets/dp.jpg",
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 5,
                        children: [
                          Text(
                            "Sreenivasulu Gangala",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: GlobalColors.grey19),
                          ),
                          Text(
                            "Latest Ranks in SSC : 12",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey9F,
                            ),
                          )
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/svg/edit_pen.svg',
                        height: 32,
                        width: 32,
                      ),
                    ],
                  ),
                ),

                //my balance container
                Mybalance(),

                //profile features
                Profilefeatures(),

                //more from rankify
                Morefromrankify(),

                //version text
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Center(
                    child: Text(
                      "Version 0.1.0",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: GlobalColors.grey19),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
