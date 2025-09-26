import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/continue_button.dart';
import '../widgets/custom_plane.dart';

class UpgradePlaneScreen extends StatefulWidget {
  const UpgradePlaneScreen({super.key});

  @override
  State<UpgradePlaneScreen> createState() => _UpgradePlaneScreenState();
}

class _UpgradePlaneScreenState extends State<UpgradePlaneScreen>
    with TickerProviderStateMixin {
  int selectedPlan = 0;
  late AnimationController _animationController;
  late List<Animation<double>> _fadeAnimations;
  late List<Animation<Offset>> _slideAnimations;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _fadeAnimations = List.generate(6, (index) {
      return Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(
            index * 0.08,
            0.5 + (index * 0.08),
            curve: Curves.easeOutCubic,
          ),
        ),
      );
    });

    _slideAnimations = List.generate(6, (index) {
      return Tween<Offset>(
        begin: const Offset(0, 0.5),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(
            index * 0.08,
            0.5 + (index * 0.08),
            curve: Curves.easeOutCubic,
          ),
        ),
      );
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E4FF),
      body: Stack(
        children: [
          Positioned(
            top: -100,
            left: -150,
            child: Container(child: SvgPicture.asset('assets/icons/Star2.svg')),
          ),
          Positioned(
            top: -100,
            bottom: 100,
            right: -190,
            child: RotatedBox(
              quarterTurns: 6,
              child: Container(
                child: SvgPicture.asset('assets/icons/Star2.svg'),
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          FadeTransition(
                            opacity: _fadeAnimations[0],
                            child: SlideTransition(
                              position: _slideAnimations[0],
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(width: 32),
                                    Text(
                                      'Upgrade Plan',
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF2D2D2D),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: Container(
                                        width: 32.w,
                                        height: 32.h,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.8),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.close,
                                          color: Color(0xFF2D2D2D),
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Column(
                            children: [
                              FadeTransition(
                                opacity: _fadeAnimations[1],
                                child: SlideTransition(
                                  position: _slideAnimations[1],
                                  child: SizedBox(
                                    width: 200.w,
                                    height: 200.h,
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          // color: const Color(0xFF6C5CE7),
                                          borderRadius: BorderRadius.circular(
                                            20.r,
                                          ),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/images/Rocket_Boy.png',
                                            height: 207.h,
                                            width: 207.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              FadeTransition(
                                opacity: _fadeAnimations[2],
                                child: SlideTransition(
                                  position: _slideAnimations[2],
                                  child: Text(
                                    'Seamless Anime\nExperience, Ad-Free.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff18153F),
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 12.h),

                              FadeTransition(
                                opacity: _fadeAnimations[3],
                                child: SlideTransition(
                                  position: _slideAnimations[3],
                                  child: Text(
                                    'Enjoy unlimited anime streaming without\ninterruptions.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffAEADB5),
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 32.h),

                              FadeTransition(
                                opacity: _fadeAnimations[4],
                                child: SlideTransition(
                                  position: _slideAnimations[4],
                                  child: CustomPlane(
                                    selectedPlan: selectedPlan,
                                    planIndex: 0,
                                    title: 'Monthly',
                                    description: 'Include Family Sharing',
                                    price: '9.99',
                                    type: 'Month',
                                    onTap: () =>
                                        setState(() => selectedPlan = 0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.h),

                              FadeTransition(
                                opacity: _fadeAnimations[4],
                                child: SlideTransition(
                                  position: _slideAnimations[4],
                                  child: CustomPlane(
                                    selectedPlan: selectedPlan,
                                    planIndex: 1,
                                    title: 'Annually',
                                    description: 'Include Family Sharing',
                                    price: '99.99',
                                    type: 'Year',
                                    onTap: () =>
                                        setState(() => selectedPlan = 1),
                                  ),
                                ),
                              ),

                              SizedBox(height: 16.h),

                              SizedBox(height: 32.h),

                              FadeTransition(
                                opacity: _fadeAnimations[5],
                                child: SlideTransition(
                                  position: _slideAnimations[5],
                                  child: const ContinueButton(),
                                ),
                              ),

                              SizedBox(height: 20.h),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
