import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/dashboard/widgets/bottomcontainer.dart';
import 'package:rankify/features/dashboard/widgets/middlecontainer.dart';
import 'package:rankify/features/dashboard/widgets/topcontainer.dart';
import 'package:rankify/utils/screen_size.dart';

class Buildexamcard extends StatelessWidget {
  final double layoutheight;

  const Buildexamcard({super.key, required this.layoutheight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: layoutheight,
      child: ListView.builder(
      
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: Screensize.height * 0.02,
              left: Screensize.width * (6 / 375),
              right: Screensize.width * (6 / 375),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                //middle container
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  height: Screensize.height * 0.22,
                  child: Middlecontainer(),
                ),

                //top container
                Positioned(
                  right: 0,
                  left: 0,
                  top: -(Screensize.height * 0.001),
                  child: Container(
                    height: Screensize.height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 10,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: Topcontainer(),
                  ),
                ),

                //low container
                Positioned(
                  bottom: -(Screensize.height * 0.001),
                  right: 0,
                  left: 0,
                  child: Container(
                    height: Screensize.height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 10,
                            offset: Offset(0, -2))
                      ],
                    ),
                    child: Bottomcontainer(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
