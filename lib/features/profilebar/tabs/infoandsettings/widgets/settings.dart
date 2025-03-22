import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isNotificationSwitch = false;
  bool isDarkModeSwitch = false;
  bool isBiometricSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.02),
      padding: EdgeInsets.symmetric(
          horizontal: Screensize.width * 0.05,
          vertical: Screensize.height * 0.02),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Settings",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: GlobalColors.grey19),
          ),
          _buildSettingField(
            icon: Icons.notifications,
            lable: "Notification",
            isSwitched: isNotificationSwitch,
            onToggle: (value) {
              setState(() {
                isNotificationSwitch = value;
              });
            },
          ),
          Divider(
            color: GlobalColors.greyC6,
          
            thickness: 0.5,
          ),
          _buildSettingField(
            icon: Icons.dark_mode_outlined,
            lable: "Darkmode",
            isSwitched: isDarkModeSwitch,
            onToggle: (value) {
              setState(() {
                isDarkModeSwitch = value;
              });
            },
          ),
          Divider(
            color: GlobalColors.greyC6,
            
            thickness: 0.5,
          ),
          _buildSettingField(
            icon: Icons.fingerprint,
            lable: "Biometric",
            isSwitched: isBiometricSwitch,
            onToggle: (value) {
              setState(() {
                isBiometricSwitch = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingField(
      {required IconData icon,
      required String lable,
      required bool isSwitched,
      required ValueChanged<bool> onToggle}) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Screensize.width * 0.05),
              child: Icon(
                icon,
                size: 20.r,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Text(
                lable,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: GlobalColors.grey19),
              ),
            ),
            Transform.scale(
              scale: 0.6,
              child: Switch(
                value: isSwitched,
                onChanged: onToggle,
                activeColor: Colors.white,
                activeTrackColor: GlobalColors.blueE6,
                inactiveThumbColor: GlobalColors.greyEC,
                inactiveTrackColor: GlobalColors.grey78,
              ),
            )
          ],
        ),
      ],
    );
  }
}
