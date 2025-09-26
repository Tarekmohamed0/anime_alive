import 'package:anime_alive/src/core/global/global.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/details/presentation/pages/details_screen.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/upgrade_plane/presentation/pages/upgrade_plane_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/home', // مسار الصفحة الأولى
    routes: [
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: '/details',
        name: 'details',
        builder: (context, state) {
          return const DetailsScreen();
        },
      ),
      GoRoute(
        path: '/upgrade_plane',
        name: 'UpgradePlaneScreen',
        builder: (context, state) {
          return const UpgradePlaneScreen();
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: const Center(child: Text('404 - Page not found')),
    ),
  );
}
