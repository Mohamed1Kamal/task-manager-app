import 'package:flutter/material.dart';
import 'package:flutter_app/core/routing/app_router.dart';
import 'package:flutter_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ManagerApp extends StatelessWidget {
  const ManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Manager App',
        theme: ThemeData(
          fontFamily: 'Inter',
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainBlue),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
