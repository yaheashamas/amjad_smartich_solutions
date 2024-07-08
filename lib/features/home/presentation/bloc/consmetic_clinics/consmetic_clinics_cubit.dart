import 'package:amjad_smartich_solutions/features/home/domain/usecases/get_all_consmetic_clinics_usecase.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/consmetic_clinics/consmetic_clinics_state.dart';
import 'package:bloc/bloc.dart';

class ConsmeticClinicsCubit extends Cubit<ConsmeticClinicsState> {
  final GetAllConsmeticClinicsUsecase getAllConsmeticClinicsUsecase;
  ConsmeticClinicsCubit(
    this.getAllConsmeticClinicsUsecase,
  ) : super(ConsmeticClinicsState.init());

  Future getAll() async {
    emit(state.copyWith(stateClass: StateClass.loading));
    var result = await getAllConsmeticClinicsUsecase();

    result.fold(
      (l) => emit(
        state.copyWith(
          stateClass: StateClass.error,
          message: l.message,
        ),
      ),
      (r) {
        emit(
          state.copyWith(
            stateClass: StateClass.loaded,
            cosmeticClinicsEntity: r,
          ),
        );
        print(r);
      },
    );
  }
}
