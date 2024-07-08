import 'package:amjad_smartich_solutions/features/home/data/datasources/home_remote_datasource.dart';
import 'package:amjad_smartich_solutions/features/home/data/repositories/home_repo_impl.dart';
import 'package:amjad_smartich_solutions/features/home/domain/repositories/home_repo.dart';
import 'package:amjad_smartich_solutions/features/home/domain/usecases/get_all_consmetic_clinics_usecase.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/consmetic_clinics/consmetic_clinics_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/slider/slider_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  main();
  homeScreen();
}

main() {
  getIt.registerSingleton(BottomNavigationBarCubit());
}

homeScreen() {
  // Consmetic Clinics
  getIt.registerFactory(() => HomeRemoteDatasource());
  getIt.registerFactory<HomeRepo>(() => HomeRepoImpl(getIt()));
  getIt.registerFactory(() => GetAllConsmeticClinicsUsecase(getIt()));
  getIt.registerFactory(() => ConsmeticClinicsCubit(getIt()));

  getIt.registerFactory(() => SliderCubit());
}
