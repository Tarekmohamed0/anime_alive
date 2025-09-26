import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String anime;
  final String imageUrl;

  const CharacterCard({
    super.key,
    required this.name,
    required this.anime,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 92.w,
          height: 92.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: ClipOval(
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: Icon(Icons.person, color: Colors.grey[600], size: 40),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          name,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2D2D2D),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4),
        Text(
          anime,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xffACACAC),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
