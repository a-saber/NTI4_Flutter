
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

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
          home: HomeView(),
        );
      },

    );
  }
}
