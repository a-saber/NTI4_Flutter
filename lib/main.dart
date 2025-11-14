
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:nti4flutter/core/utils/app_colors.dart';

import 'features/register_view.dart';
import 'features/splash_view.dart';
import 'features/test_cubit.dart';
import 'features/test_scroll.dart';
import 'home_view.dart';

void main() {
  runApp(MyApp());

}

// root widget of the application
class MyApp extends StatelessWidget
{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (_, child)
      {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // primaryColor: AppColors.primary,
            // useMaterial3: ,
              colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
              scaffoldBackgroundColor: AppColors.backgroundColor,
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.backgroundColor
            )
          ),
          home: TestCubit(),
        );
      },

    );
  }
}
