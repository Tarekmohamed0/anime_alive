import 'package:anime_alive/src/core/config/config.dart';
import 'package:anime_alive/src/core/routes/gorouter.dart';
import 'package:anime_alive/src/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, ch) => DismissKeyboard(
        child: MaterialApp.router(
          // Usa el router definido en AppRouter
          routerConfig: AppRouter.router,

          // Builder para ResponseFrame
          theme: AppTheme.lightTheme,

          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
