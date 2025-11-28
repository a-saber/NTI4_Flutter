import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/register_cubit/register_cubit.dart';
import '../cubit/register_cubit/register_state.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state){
             if(state is RegisterSuccessState){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration Successful')));
            }
            else if(state is RegisterErrorState){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration Failed')));
            }
          },
          builder: (context, state) {

            return Form(
                  key: RegisterCubit.get(context).formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: RegisterCubit.get(context).name,
                        onChanged: (String value){

          
                        },
                        validator: (String? value){
                          if(value == null || value.isEmpty)
                          {
                            return 'Name must not be empty';
                          }
                          return null;
            
                        },
                      ),
                      TextFormField(
                        controller: RegisterCubit.get(context).email,
                        validator: (value) {
                          // regex email validation
                          var pattern =
                              r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
                          var regex = RegExp(pattern);
                          if (!regex.hasMatch(value ?? '')) {
                            return 'Enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      state is RegisterLoadingState?
                      CircularProgressIndicator():
                      ElevatedButton(
                        onPressed: RegisterCubit.get(context).onRegisterPressed, 
                        child: Text('Register'))
                    ],
                  ),
                );
          
          }
        )
          
      ),
    );
  }
}