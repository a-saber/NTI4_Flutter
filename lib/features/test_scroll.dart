import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nti4flutter/core/utils/app_assets.dart';
class UserModel
{
  String name;
  int age;
  String email;
  String phone;

  UserModel({required this.name, required this.age, required this.email, required this.phone});
}
List<UserModel> users = [
  UserModel(name: 'mohamed', age: 20, email: 'mohamed@com', phone: '0123456789'),
  UserModel(name: 'Ahmed', age: 20, email: 'ahmed@com', phone: '0123456789'),
  UserModel(name: 'Ali', age: 20, email: 'ali@com', phone: '0123456789'),
  UserModel(name: 'mohamed', age: 20, email: 'mohamed@com', phone: '0123456789'),
  UserModel(name: 'Ahmed', age: 20, email: 'ahmed@com', phone: '0123456789'),
  UserModel(name: 'Ali', age: 20, email: 'ali@com', phone: '0123456789'),
  UserModel(name: 'mohamed', age: 20, email: 'mohamed@com', phone: '0123456789'),
  UserModel(name: 'Ahmed', age: 20, email: 'ahmed@com', phone: '0123456789'),
  UserModel(name: 'Ali', age: 20, email: 'ali@com', phone: '0123456789'),
  UserModel(name: 'mohamed', age: 20, email: 'mohamed@com', phone: '0123456789'),
  UserModel(name: 'Ahmed', age: 20, email: 'ahmed@com', phone: '0123456789'),
  UserModel(name: 'Ali', age: 20, email: 'ali@com', phone: '0123456789'),
];
class TestScroll extends StatelessWidget {
  const TestScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              // horizontal list
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: users.length,
                  itemBuilder: (context, index)=> Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                        backgroundImage: AssetImage(AppAssets.flag),
                        radius: 30,
                                      ),
                        SizedBox(height: 5,),
                        Text(users[index].name)
                      ],
                    ),
                  )),
              ),
              SizedBox(height: 20,),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: users.length,
                itemBuilder: (context, index)=> UserItemBuilder(
                  userModel: users[index],
                ))
            ],
          ),
        )
      )

    );
  }
}
class UserItemBuilder extends StatelessWidget {
  final UserModel userModel;

   const UserItemBuilder({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow:
        [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            spreadRadius: 5,
            offset: Offset.zero
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Row(
            children: [
              Expanded(child: Text(userModel.name)),
              SizedBox(width: 8.w,),
              Text(userModel.age.toString())
            ],
          ),
          SizedBox(height: 8.h,),
          Text(userModel.email),
          SizedBox(height: 8.h,),
          Text(userModel.phone),
        ],
      ),
    );
  }
}
