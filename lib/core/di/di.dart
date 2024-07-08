import 'package:amjad_smartich_solutions/features/home/data/datasources/home_remote_datasource.dart';
import 'package:amjad_smartich_solutions/features/home/data/repositories/home_repo_impl.dart';
import 'package:amjad_smartich_solutions/features/home/domain/repositories/home_repo.dart';
import 'package:amjad_smartich_solutions/features/home/domain/usecases/get_all_consmetic_clinics_usecase.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/consmetic_clinics/consmetic_clinics_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/slider/slider_cubit.dart';
import 'package:amjad_smartich_solutions/features/login/data/datasources/login_datasource.dart';
import 'package:amjad_smartich_solutions/features/login/data/repositories/login_repo_impl.dart';
import 'package:amjad_smartich_solutions/features/login/domain/repositories/login_repo.dart';
import 'package:amjad_smartich_solutions/features/login/domain/usecases/login_usecase.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/bloc/login_cubit/login_cubit.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/bloc/token_cubit/token_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  main();
  loginScreen();
  homeScreen();
}

main() {
  getIt.registerSingleton(TokenCubit());
  getIt.registerSingleton(BottomNavigationBarCubit());
}

loginScreen() {
  getIt.registerFactory(() => LoginDatasource());
  getIt.registerFactory<LoginRepo>(() => LoginRepoImpl(getIt()));
  getIt.registerFactory(() => LoginUseCase(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt(), getIt()));
}

homeScreen() {
  // Consmetic Clinics
  getIt.registerFactory(() => HomeRemoteDatasource());
  getIt.registerFactory<HomeRepo>(() => HomeRepoImpl(getIt()));
  getIt.registerFactory(() => GetAllConsmeticClinicsUsecase(getIt()));
  getIt.registerFactory(() => ConsmeticClinicsCubit(getIt()));

  getIt.registerFactory(() => SliderCubit());
}
