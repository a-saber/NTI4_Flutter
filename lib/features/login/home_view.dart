import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nti4flutter/core/utils/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.r,
        title: Row(
          children:
          [
            Container(
              height: 60.r,
              width: 60.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image:AssetImage('assets/flag.png')
                )
              ),
            ),
            SizedBox(width: 16.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Hello!',
                style: TextStyle(
                    color: Color(0xFF24252C),
                    fontSize: 12.sp
                  ),
                ),
                SizedBox(height: 4.h,),
                Text('Ahmed Saber',
                  style: TextStyle(
                      color: Color(0xFF24252C),
                      fontSize: 16.sp
                  ),
                ),


              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 20
        ),
        child: Column(
          children:
          [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: AppColors.primary,
              ),
              padding: REdgeInsets.symmetric(
                horizontal: 22,
                vertical: 18
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    'Your today’s tasks\nalmost done!',
                    style: TextStyle(
                      color: AppColors.white
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: '80',
                            style: TextStyle(
                              fontSize: 40.sp,
                              color: AppColors.white,
                            )
                          ),
                          TextSpan(
                            text: '%',
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: AppColors.white,
                            )
                          ),

                        ]
                      )),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.primary,
                          backgroundColor: AppColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.r)
                          )
                        ),
                        onPressed: (){
                          print('pressed');
                        },
                        child: Text('View Tasks',
                        style: TextStyle(
                          fontSize: 15.sp
                        ),)
                      )

                    ],
                  )

                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
