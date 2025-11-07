import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti4flutter/core/utils/app_assets.dart';
import 'package:nti4flutter/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
        (){
          print('after 3 seconds');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeView()));
    }
    );

    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppAssets.logoPath,
          height: 344.h,
          width: 334.w,
        ),
      )
    );
  }
}
