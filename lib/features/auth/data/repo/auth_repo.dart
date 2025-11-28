import 'package:nti4flutter/features/auth/data/models/user_model.dart';

class AuthRepo 
{
  Future<UserModel?>  register({required UserModel user}) async
  {
    await Future.delayed(Duration(seconds: 2));
    // call api to register user
    if(user.name != 'a'){
      return null;
    }
    return user;



  }
}