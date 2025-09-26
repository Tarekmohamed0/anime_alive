import 'package:anime_alive/src/features/home/data/models/anime_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/anime_card.dart';
import '../widgets/characters_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;
  int _selectedNavIndex = 0;
  final List<String> tabs = ['All', 'Popular', 'Trending', 'New Releases'];

  Widget _buildNavIcon(String assetPath, bool isSelected) {
    return SvgPicture.asset(
      assetPath,
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(
        isSelected ? Colors.white : (Colors.grey[800] ?? Colors.grey),
        BlendMode.srcIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GNav(
          backgroundColor: Colors.white,
          selectedIndex: _selectedNavIndex,
          onTabChange: (index) {
            setState(() {
              _selectedNavIndex = index;
            });
          },

          haptic: true,
          tabBorderRadius: 20,

          curve: Curves.easeOutExpo,
          duration: Duration(milliseconds: 500),
          gap: 10,
          color: Colors.grey[800] ?? Colors.grey,
          activeColor: Color(0x00ffffff),
          iconSize: 24,
          tabBackgroundColor: Color(0xff5436F8),
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
          tabs: [
            GButton(
              margin: EdgeInsets.symmetric(vertical: 20),
              icon: Icons.home,
              leading: _buildNavIcon(
                'assets/icons/home.svg',
                _selectedNavIndex == 0,
              ),
              text: 'Home',
              textColor: Colors.white,
            ),
            GButton(
              margin: EdgeInsets.symmetric(vertical: 20),
              icon: Icons.favorite_border,
              leading: _buildNavIcon(
                'assets/icons/library.svg',
                _selectedNavIndex == 1,
              ),
              text: 'Likes',
            ),
            GButton(
              margin: EdgeInsets.symmetric(vertical: 20),
              icon: Icons.search,
              text: 'Search',
              leading: _buildNavIcon(
                'assets/icons/search1.svg',
                _selectedNavIndex == 2,
              ),
            ),
            GButton(
              margin: EdgeInsets.symmetric(vertical: 20),
              icon: Icons.person,
              text: 'Profile',
              leading: _buildNavIcon(
                'assets/icons/setting.svg',
                _selectedNavIndex == 3,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffdee3ff), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: -30,
                right: -170,
                child: RotatedBox(
                  quarterTurns: 6,
                  child: SvgPicture.asset('assets/icons/Star2.svg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      // Header
                      Text(
                        'Where Anime Comes Alive',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                          color: Color(0xFF2D2D2D),
                        ),
                      ),
                      SizedBox(height: 24),

                      // Tab Navigation
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tabs.length,
                          itemBuilder: (context, index) {
                            bool isSelected = index == selectedTabIndex;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedTabIndex = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 16),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Color(0xff5436F8)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.05),
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    tabs[index],
                                    style: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Color(0xff5436F8),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 24),

                      // Featured Anime Cards
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(AnimeModel.animes.length, (index) {
                              final anime = AnimeModel.animes[index];
                              return Padding(
                                padding: const EdgeInsets.only(right: 14.0),
                                child: AnimeCard(
                                  onTap: () =>
                                      GoRouter.of(context).push('/details'),
                                  title: anime.title,
                                  subtitle: anime.subtitle,
                                  rating: anime.rating,
                                  imageUrl: anime.imageUrl,
                                  announcement: anime.announcement,
                                  description: anime.description,
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),

                      // Top Characters Section
                      Text(
                        'Top Characters',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2D2D2D),
                        ),
                      ),
                      SizedBox(height: 20),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: 20,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(3, (index) {
                              List<Map<String, String>> characters = [
                                {
                                  'name': 'Gon Freecss',
                                  'anime': 'Hunter x Hunter',
                                  'imageUrl': 'assets/images/profile_pic.png',
                                },
                                {
                                  'name': 'Naruto Uzumaki',
                                  'anime': 'Naruto',
                                  'imageUrl': 'assets/images/profile_pic.png',
                                },
                                {
                                  'name': 'Luffy',
                                  'anime': 'One Piece',
                                  'imageUrl': 'assets/images/profile_pic.png',
                                },
                              ];
                              return CharacterCard(
                                name: characters[index]['name']!,
                                anime: characters[index]['anime']!,
                                imageUrl: characters[index]['imageUrl']!,
                              );
                            }),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
