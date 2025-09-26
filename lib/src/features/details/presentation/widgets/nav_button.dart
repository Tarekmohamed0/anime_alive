import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
    required this.title,
    required this.iconPath,
    required this.color,
    this.opacity,
    this.onTap,
  });
  final String title;
  final String iconPath;
  final Color color;
  final int? opacity;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        decoration: BoxDecoration(
          color: opacity != null ? color.withAlpha(opacity!) : color,
          borderRadius: BorderRadius.all(Radius.circular(37)),
        ),
        height: 44.h,
        width: 170.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 7,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 19.w,
              height: 19.h,
              color: Colors.white,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Raleway',
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
