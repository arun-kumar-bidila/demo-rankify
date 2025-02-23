import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatelessWidget {
  final String text;
  final bool isChecked;
  final VoidCallback onTap;
  const CustomCheckbox(
      {super.key, required this.isChecked, required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title:
          Text(text,style: TextStyle(fontSize: 15.sp),),
      value: isChecked,
      onChanged: (bool? value) => {onTap()},
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
