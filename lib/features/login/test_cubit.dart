import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti4flutter/features/login/cubit/login_cubit.dart';
import 'package:nti4flutter/features/login/cubit/login_state.dart';

class TestCubit extends StatelessWidget {
  const TestCubit({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test Cubit'),
        ),
        body: Column(
          children:
          [
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state){
                return Switch(
                    value: LoginCubit.get(context).switchValue,
                    onChanged: LoginCubit.get(context).changeSwitchValue
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
