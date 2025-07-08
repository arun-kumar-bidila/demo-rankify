import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Mainsector extends StatefulWidget {
  const Mainsector({super.key});

  @override
  State<Mainsector> createState() => _MainsectorState();
}

class _MainsectorState extends State<Mainsector> {
  List<Map<String, dynamic>> sectors = [
    {
      "sectorTitle": "SSC",
      "subSectore": ["CGL", "GD", "CHSL", "JE"]
    },
    {
      "sectorTitle": "BANKS",
      "subSectore": ["Clerk", "PO", "Manager"]
    },
    {
      "sectorTitle": "RRB",
      "subSectore": ["Group-D", "NTPC", "ALP & Technician", "Paramedical"]
    },
    {
      "sectorTitle": "UPSC",
      "subSectore": ["Civil Services", "CDS & NDA", "IFOS"]
    },
    {
      "sectorTitle": "STATE PSC",
      "subSectore": ["Group-1", "Group-2", "Group-3", "Group-4"]
    },
    {
      "sectorTitle": "SI & PC",
      "subSectore": ["Civil", "Armed Reserve", "Special police force", "Fire"]
    },
    {
      "sectorTitle": "DSC",
      "subSectore": ["SGT", "School Assistant", "PET", "Language Pandit"]
    },
    {
      "sectorTitle": "OTHERS",
      "subSectore": ["BSNL", "LIC", "FCI", "Postal Department"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: Screensize.width * 0.05,
          vertical: Screensize.height * 0.02),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Main Sector",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: GlobalColors.grey19),
          ),
          GestureDetector(
            onTap: () {
              _buildMainSectorDialog();
            },
            child: Container(
                margin: EdgeInsets.only(top: Screensize.height * 0.02),
                padding: EdgeInsets.symmetric(
                    horizontal: Screensize.width * 0.05,
                    vertical: Screensize.height * 0.01),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: GlobalColors.greyC6, width: 1)),
                child: Row(
                  children: [
                    Text(
                      "Civil Services",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.grey19),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  void _buildMainSectorDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: Screensize.height * 0.02,
                  horizontal: Screensize.width * 0.05),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: Screensize.height*0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Sector",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close_rounded,
                            size: 25.r,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Screensize.height * 0.5,
                    child: ListView.builder(
                        itemCount: sectors.length,
                        itemBuilder: (context, index) {
                          var section = sectors[index];
                          return _buildSectorExpansionCard(
                              sectorTitle: section["sectorTitle"],
                              subsector: section["subSectore"]);
                        }),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _buildSectorExpansionCard(
      {required sectorTitle, required List<dynamic> subsector}) {
    return Container(
      // padding: EdgeInsets.zero,
        margin: EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
        decoration: BoxDecoration(
            color: GlobalColors.greyF5,
            borderRadius: BorderRadius.circular(10.r)),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            // tilePadding: EdgeInsets.zero,
            title: 
               Text(
                sectorTitle,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: GlobalColors.grey19),
              ),
            
            childrenPadding:
                EdgeInsets.symmetric(horizontal: Screensize.width * 0.05),
            children: [
              Column(
                children: subsector.map<Widget>((point) {
                  return Container(
                    margin: EdgeInsets.only(
                        bottom: Screensize.height * 0.02),
                    padding: EdgeInsets.symmetric(
                        vertical: Screensize.height * 0.01,
                        horizontal: Screensize.width * 0.05),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Row(
                      children: [
                        Text(
                          point,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.grey19),
                        )
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ));
  }
}
