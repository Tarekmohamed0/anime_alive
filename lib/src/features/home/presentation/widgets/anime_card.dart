import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

class AnimeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double rating;
  final String imageUrl;
  final String announcement;
  final String description;
  final Function()? onTap;
  const AnimeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.imageUrl,
    required this.announcement,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            // height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.1),
              //     blurRadius: 10,
              //     offset: Offset(0, 4),
              //   ),
              // ],
            ),
            child: Column(
              children: [
                Container(
                  height: 245.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.image_not_supported,
                                  size: 50,
                                  color: Colors.grey[600],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Image not found',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                SizedBox(height: 12),
                // Title and Subtitle
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff18153F),
                    ),
                  ),
                ),

                SizedBox(height: 4),
                Center(
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xffA9A9A9),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            width: 41.w,
            height: 18.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star.svg',
                  width: 10.w,
                  height: 10.h,
                ),
                Center(
                  child: Text(
                    ' $rating',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
