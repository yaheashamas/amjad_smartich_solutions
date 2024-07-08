import 'package:amjad_smartich_solutions/core/validation/password.dart';
import 'package:amjad_smartich_solutions/core/validation/phone_syria.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/consmetic_clinics/consmetic_clinics_state.dart';
import 'package:amjad_smartich_solutions/features/login/domain/entities/login_entity.dart';
import 'package:amjad_smartich_solutions/features/login/domain/usecases/login_usecase.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/bloc/token_cubit/token_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final TokenCubit tokenCubit;
  final LoginUseCase loginUseCase;
  LoginCubit(
    this.loginUseCase,
    this.tokenCubit,
  ) : super(LoginState.init());

  initLoading() {
    emit(state.copyWith(stateClass: StateClass.init));
  }

  changePhoneNumber(String phone) {
    emit(state.copyWith(phoneNumber: PhoneSyria.dirty(phone)));
  }

  changePassword(String password) {
    emit(state.copyWith(password: Password.dirty(password)));
  }

  Future login() async {
    emit(state.copyWith(stateClass: StateClass.loading));
    var result = await loginUseCase(
      state.phoneNumber.value,
      state.password.value,
    );

    result.fold(
      (l) {
        emit(state.copyWith(
          stateClass: StateClass.error,
          message: l.message,
        ));
      },
      (r) {
        emit(state.copyWith(
          stateClass: StateClass.lodinSuccessful,
          loginEntity: r,
        ));
        tokenCubit.verification(r.content!.token!);
      },
    );
  }
}
