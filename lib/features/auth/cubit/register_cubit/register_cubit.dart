import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti4flutter/features/auth/cubit/register_cubit/register_state.dart';
import 'package:nti4flutter/features/auth/data/models/user_model.dart';
import 'package:nti4flutter/features/auth/data/repo/auth_repo.dart';

class RegisterCubit extends Cubit<RegisterState>{
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  var name = TextEditingController();
  var email = TextEditingController();
  var formKey = GlobalKey<FormState>();
  AuthRepo authRepo = AuthRepo();

  void onRegisterPressed()async
  {
    // validate form
    if(formKey.currentState?.validate() == true)
    {
      emit(RegisterLoadingState());

      //repo
      UserModel? userReposne = await authRepo.register(user: UserModel(name: name.text, email: email.text));


      if(userReposne != null){
        emit(RegisterSuccessState());
      } else {
        emit(RegisterErrorState()); 
      }

    }


  }
}
