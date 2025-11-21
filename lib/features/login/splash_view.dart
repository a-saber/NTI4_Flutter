import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti4flutter/core/utils/app_assets.dart';
import 'package:nti4flutter/features/login/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    if(mounted) {
      Future.delayed(
      Duration(seconds: 3),
        (){
          print('after 3 seconds');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeView()));
    }
    );
    }

    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppAssets.logo,
          height: 344.h,
          width: 334.w,
        ),
      )
    );
  }
}
