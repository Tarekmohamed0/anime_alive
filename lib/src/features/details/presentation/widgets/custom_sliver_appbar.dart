import 'package:flutter/material.dart';

class CustomSliverAppbar extends StatelessWidget {
  const CustomSliverAppbar({super.key, required bool isScrolled})
    : _isScrolled = isScrolled;

  final bool _isScrolled;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xff2c1e51),
      expandedHeight: 500,
      pinned: true,
      floating: false,
      flexibleSpace: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: double.infinity,

            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -50,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              alignment: _isScrolled
                  ? Alignment.bottomLeft
                  : Alignment.bottomCenter,
              padding: EdgeInsets.only(
                left: _isScrolled ? 20 : 0,
                bottom: _isScrolled ? 70 : 0,
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                width: _isScrolled ? 120 : 193,
                height: _isScrolled ? 60 : 140,
                child: Image.asset(
                  'assets/images/anime_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
