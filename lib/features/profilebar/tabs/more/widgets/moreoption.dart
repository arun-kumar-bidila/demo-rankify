import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      "imagePath":"assets/svg/info.svg",
      "optionfile":()=>Aboutus()
    },
     {
      "title":"Community Guidelines",
      "imagePath":"assets/svg/doc.svg",
      "optionfile":()=>Communityguidelines()
    },
     {
      "title":"Legality",
      "imagePath":"assets/svg/shield.svg",
      "optionfile":()=>Legality()
    },
     {
      "title":"Terms and Conditions",
      "imagePath":"assets/svg/terms.svg",
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
          vertical: 30,
          horizontal: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            SvgPicture.asset(
              widget.optionImagePath,
              height: 40,
            ),
            Expanded(
              child: Text(
                widget.optionName,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
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
              horizontal: 16,
              vertical: 50,
            ),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: EdgeInsets.only(
                bottom: 5,
                
              ),

              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: GlobalColors.buttonColor,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 31,
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
                              child: SvgPicture.asset(
                                "assets/svg/close.svg",
                                height: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Text(
                            options[pageOption]["title"],
                            style: TextStyle(
                                fontSize: 20,
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
                          horizontal: 25,
                         ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20),
                            child: SvgPicture.asset(
                              options[pageOption]["imagePath"],
                              height: 40,
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
