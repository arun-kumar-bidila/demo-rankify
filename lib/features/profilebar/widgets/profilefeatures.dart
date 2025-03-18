import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/profilebar/tabs/more/screens/more.dart';
import 'package:rankify/features/profilebar/tabs/privacypolicy/screens/privacypolicy.dart';
import 'package:rankify/features/profilebar/tabs/rankifysupport/screens/supportmain.dart';
import 'package:rankify/features/profilebar/tabs/rankifyworks/screens/howrankifyworks.dart';
import 'package:rankify/features/profilebar/tabs/referandearn/screens/referandearn.dart';
import 'package:rankify/features/profilebar/widgets/buildprofilefeature.dart';
import 'package:rankify/utils/screen_size.dart';

class Profilefeatures extends StatefulWidget {
  const Profilefeatures({super.key});

  @override
  State<Profilefeatures> createState() => _ProfilefeaturesState();
}

class _ProfilefeaturesState extends State<Profilefeatures> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.02),
     
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Buildprofilefeature(
              icon: Icons.group,
              label: "Refer & Earn",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Referandearn()));
              },
              pos: 0),
          Buildprofilefeature(
               icon: Icons.emoji_events,
              label: "Winners List",
              onTap: () {},
              pos: 0),
          Buildprofilefeature(
               icon: Icons.bar_chart,
              label: "Check Your Performance",
              onTap: () {},
              pos: 0),
          Buildprofilefeature(
              icon: Icons.settings,
              label: "My Info & Settings",
              onTap: () {},
              pos: 0),
          Buildprofilefeature(
              icon: Icons.info,
              label: "How to Work Rankify",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Howrankifyworks()));
              },
              pos: 0),
          Buildprofilefeature(
             icon: Icons.lock,
              label: "Privacy Policy",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Privacypolicy(),
                  ),
                );
              },
              pos: 0),
          Buildprofilefeature(
               icon: Icons.more_horiz,
              label: "More",
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => More()));
              },
              pos: 0),
          Buildprofilefeature(
               icon: Icons.access_time,
              label: "24 x 7 Help & Support ",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Supportmain()));
              },
              pos: 1),
        ],
      ),
    );
  }
}
