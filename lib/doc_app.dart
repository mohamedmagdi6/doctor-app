import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/routing/route_generator.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreenRoute,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.whiteColor,
          primaryColor: AppColors.primaryColor,
        ),
        title: 'Doctor App',
        onGenerateRoute: appRouter.getRoute,
      ),
    );
  }
}
