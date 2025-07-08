import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/constants/colors.dart';
import 'package:rankify/utils/screen_size.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  List<String> districNames = [
    "Anakapalli",
    "Ananthapuramu",
    "Annamayya",
    "Bapatla",
    "Chittoor",
    "Konaseema",
    "East Godavari",
    "Eluru",
    "Guntur",
    "Kakinada",
    "Krishna",
    "Kurnool",
    "Manyam",
    "Nandyal",
    "NTR",
    "Palnadu",
    "Prakasam",
    "Srikakulam",
    "Nellore",
    "Sri Sathya Sai",
    "Tirupati",
    "Visakhapatnam",
    "Vizianagaram",
    "West Godavari",
    "YSR (Kadapa)",
    "Alluri Sitharama Raju"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Personal Information",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: GlobalColors.grey19),
                ),
                Image.asset(
                  "icons/pencil-outline.png",
                  height: 20,
                  color: GlobalColors.buttonColor,
                )
              ],
            ),
          ),
          _buildPersonalInfoField((Icons.person), "Sreenivasulu Gangala"),
          _buildPersonalInfoField(Icons.email_outlined, "sreenuai@gmail.com"),
          _buildPersonalInfoField(Icons.phone, "9704377817"),
          _buildPersonalInfoField(Icons.location_on, "Andhrapradesh"),
          _buildPersonalInfoField(Icons.location_city, "Anakapalli"),
          // GestureDetector(
          //   onTap: () {
          //     _buildDialog(context);
          //   },
          //   child: Container(
          //       margin:
          //           EdgeInsets.symmetric(vertical: Screensize.height * 0.01),
          //       padding: EdgeInsets.symmetric(
          //           vertical: Screensize.height * 0.01,
          //           horizontal: Screensize.width * 0.05),
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10.r),
          //           border: Border.all(color: GlobalColors.greyC6, width: 1)),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(left: Screensize.width * 0.1),
          //             child: Text(
          //               "Select District",
          //               style: TextStyle(
          //                   fontSize: 16.sp,
          //                   fontWeight: FontWeight.w500,
          //                   color: GlobalColors.grey19),
          //             ),
          //           ),
          //           Icon(
          //             Icons.keyboard_arrow_down_rounded,
          //             size: 20.r,
          //             color: Colors.black,
          //           )
          //         ],
          //       )),
          // )
        ],
      ),
    );
  }

  Widget _buildPersonalInfoField(IconData icon, String label) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10,),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: GlobalColors.greyC6, width: 1)),
      child: Row(
        children: [
          Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              )),
          Text(
            label,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: GlobalColors.grey19),
          )
        ],
      ),
    );
  }

//   void _buildDialog(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return Dialog(
//             backgroundColor: Colors.white,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.r)),
//             child: Container(
//               margin:EdgeInsets.symmetric(vertical: Screensize.height*0.01) ,
//               padding: EdgeInsets.symmetric(
//                   // vertical: Screensize.height * 0.02,
//                   horizontal: Screensize.width * 0.05),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                         top: Screensize.height * 0.02,
//                         bottom: Screensize.height * 0.01),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Select District",
//                           style: TextStyle(
//                               fontSize: 18.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Icon(
//                             Icons.close_rounded,
//                             size: 25.r,
//                             color: Colors.black,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: Screensize.height * 0.2,
//                     child: ListView.builder(
//                         itemCount: districNames.length,
//                         itemBuilder: (context, index) {
//                           return Container(
                            
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: Screensize.width * 0.05,
//                                 vertical: Screensize.height * 0.01),
//                             margin: EdgeInsets.symmetric(
//                                 vertical: Screensize.height * 0.005),
//                             decoration: BoxDecoration(
//                                 color: GlobalColors.greyF5,
//                                 borderRadius: BorderRadius.circular(5.r)),
//                             child: Text(
//                               districNames[index],
//                               style: TextStyle(
//                                   fontSize: 15.sp,
//                                   fontWeight: FontWeight.w500,
//                                   color: GlobalColors.grey5D),
//                             ),
//                           );
//                         }),
//                   )
//                 ],
//               ),
//             ),
//           );
//         });
//   }
}
