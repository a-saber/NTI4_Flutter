import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    // print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: Center(
        child: Container(
          height: 240.r,
          width: 240.r,
          color: Colors.red,
        ),
      ),
    );
  }
}
