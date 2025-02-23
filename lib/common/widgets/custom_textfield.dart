import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rankify/constants/global_variables.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final String? label;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  // final String? Function(String?)? validator;
  const CustomTextfield({
    super.key,
    required this.hintText,
    this.label,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
    required this.keyboardType
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
        ],
        SizedBox(
          height: 10.h,
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          // obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: Color.fromRGBO(0, 0, 0, 0.3),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide:
                  BorderSide(color: Color.fromRGBO(0, 0, 0, 0.3), width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 2.r,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            suffixIcon: suffixIcon,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return hintText;
            }
            return null;
          },
        )
      ],
    );
  }
}
