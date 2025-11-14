import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState>
{
  LoginCubit():super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  bool switchValue = true;
  void changeSwitchValue(bool newValue)
  {
    switchValue = newValue;
    emit(LoginSwitchChangedState());
  }

}