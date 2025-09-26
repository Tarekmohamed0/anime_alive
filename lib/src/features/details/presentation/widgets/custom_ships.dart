import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

class CustomShip extends StatelessWidget {
  const CustomShip({super.key, required this.titiel, required this.iconPath});
  final String titiel;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        spacing: 7,
        children: [
          SvgPicture.asset(iconPath, width: 16.w, height: 16.h),
          Text(
            titiel,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
