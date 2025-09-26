import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlane extends StatelessWidget {
  const CustomPlane({
    super.key,
    required this.selectedPlan,
    required this.planIndex,
    required this.title,
    required this.description,
    required this.price,
    required this.onTap,
    this.type = 'Monthly',
  });

  final int selectedPlan;
  final int planIndex;
  final String title;
  final String description;
  final String price;
  final String type;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: selectedPlan == planIndex
                  ? const Color(0xff18153F)
                  : Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              border: selectedPlan == planIndex
                  ? null
                  : Border.all(color: const Color(0xFFE5E7EB)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                // Icon
                Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Image.asset('assets/images/file.png'),
                ),

                SizedBox(width: 16.w),

                // Plan details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: selectedPlan == planIndex
                              ? Colors.white
                              : const Color(0xFF2D2D2D),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '$price USD',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: selectedPlan == planIndex
                                    ? Colors.white
                                    : const Color(0xFF2D2D2D),
                              ),
                            ),
                            TextSpan(
                              text: ' / $type',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: selectedPlan == planIndex
                                    ? const Color(0xFFB8B5FF)
                                    : const Color(0xFF6B7280),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: selectedPlan == planIndex
                              ? const Color(0xFFB8B5FF)
                              : const Color(0xFF6B7280),
                        ),
                      ),
                    ],
                  ),
                ),

                // Radio button
                Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    color: selectedPlan == planIndex
                        ? const Color(0xff5436F8)
                        : Colors.transparent,
                    shape: BoxShape.circle,
                    border: selectedPlan == planIndex
                        ? null
                        : Border.all(color: Colors.black, width: 2),
                  ),
                  child: selectedPlan == planIndex
                      ? const Icon(Icons.check, color: Colors.white, size: 16)
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
