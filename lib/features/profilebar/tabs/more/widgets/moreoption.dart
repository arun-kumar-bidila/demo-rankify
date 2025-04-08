import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/aboutus.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/communityguidelines.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/legality.dart';
import 'package:rankify/features/profilebar/tabs/more/widgets/termsandconditions.dart';
import 'package:rankify/utils/screen_size.dart';

class Moreoption extends StatefulWidget {
  final String optionImagePath;
  final String optionName;
  final int option;
  const Moreoption(
      {super.key,
      required this.optionImagePath,
      required this.optionName,
      required this.option});

  @override
  State<Moreoption> createState() => _MoreoptionState();
}

class _MoreoptionState extends State<Moreoption> {
  List<Map<String,dynamic>> options =[
    {
      "title":"About Us",
      "imagePath":"icons/exclamation.png",
      "optionfile":()=>Aboutus()
    },
     {
      "title":"Community Guidelines",
      "imagePath":"icons/exclamation.png",
      "optionfile":()=>Communityguidelines()
    },
     {
      "title":"Legality",
      "imagePath":"icons/shield.png",
      "optionfile":()=>Legality()
    },
     {
      "title":"Terms and Conditions",
      "imagePath":"icons/exclamation.png",
      "optionfile":()=>Termsandconditions()
    },

  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _buildMoreOptionDialog(context,widget.option);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: Screensize.height * 0.03,
          horizontal: Screensize.width * 0.05,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: Screensize.width * 0.05),
              child: Image.asset(
                widget.optionImagePath,
                height: Screensize.height * 0.05,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Text(
                widget.optionName,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20.sp,
            )
          ],
        ),
      ),
    );
  }

  void _buildMoreOptionDialog(BuildContext context,int pageOption) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: EdgeInsets.symmetric(
                horizontal: Screensize.width * 0.05,
                vertical: Screensize.height * 0.08),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r)),
            child: Container(
              padding: EdgeInsets.only(
                bottom: Screensize.height * 0.02,
                
              ),

              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r)),
                      color: GlobalColors.buttonColor,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: Screensize.height * 0.03,
                      horizontal: Screensize.width * 0.05,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                "icons/close.png",
                                height: Screensize.height * 0.025,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Text(
                            options[pageOption]["title"],
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                          horizontal: Screensize.width * 0.05,
                         ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Screensize.height * 0.02),
                            child: Image.asset(
                              options[pageOption]["imagePath"],
                              height: Screensize.height * 0.04,
                              color: GlobalColors.buttonColor,
                            ),
                          ),
                          Column(
                            children: [options[pageOption]["optionfile"]()],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
