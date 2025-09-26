import 'package:anime_alive/src/features/details/presentation/widgets/nav_button.dart';
import 'package:anime_alive/src/features/details/presentation/widgets/topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_ships.dart';
import '../widgets/custom_sliver_appbar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    double scrollOffset = _scrollController.offset;

    setState(() {
      if (scrollOffset > 100) {
        _isScrolled = true;
      } else {
        _isScrolled = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80.h,
        color: Color(0xff16103C),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavButton(
              title: 'Preview',
              iconPath: 'assets/icons/watch.svg',
              color: Colors.white,
              opacity: 40,
            ),
            NavButton(
              onTap: () => GoRouter.of(context).push('/upgrade_plane'),
              title: 'Watch Now',
              iconPath: 'assets/icons/eye.svg',
              color: Color(0xff6758FE),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff2c1e51),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          CustomSliverAppbar(isScrolled: _isScrolled),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xff2c1e51),
              child: Column(
                children: [
                  Topics(),

                  SizedBox(height: 23.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      color: Colors.white.withOpacity(0.2),
                      height: 1.h,
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.symmetric(
                      horizontal: 17.w,
                      vertical: 12.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // views
                        CustomShip(
                          titiel: '1.2M views',
                          iconPath: 'assets/icons/eye.svg',
                        ),
                        //clap
                        CustomShip(
                          titiel: '2k clap',
                          iconPath: 'assets/icons/hands.svg',
                        ),
                        //seasons
                        CustomShip(
                          titiel: '4 seasons',
                          iconPath: 'assets/icons/season.svg',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      color: Colors.white.withOpacity(0.2),
                      height: 1.h,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 16.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/fire.svg',
                              width: 32.w,
                              height: 32.h,
                            ),
                            SizedBox(width: 12.w),
                            Expanded(
                              child: Text(
                                'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
