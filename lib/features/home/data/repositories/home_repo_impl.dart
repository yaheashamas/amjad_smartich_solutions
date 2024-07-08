import 'package:amjad_smartich_solutions/core/failure/failure.dart';
import 'package:amjad_smartich_solutions/core/handel_body_repository_impl.dart/handel_body_repository_impl.dart';
import 'package:amjad_smartich_solutions/features/home/data/datasources/home_remote_datasource.dart';
import 'package:amjad_smartich_solutions/features/home/domain/entities/cosmetic_clinics_entity.dart';
import 'package:amjad_smartich_solutions/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HandelBodyRepositoryImpl implements HomeRepo {
  final HomeRemoteDatasource homeRemoteDatasource;
  HomeRepoImpl(this.homeRemoteDatasource);
  @override
  Future<Either<Failure, CosmeticClinicsEntity>>
      getAllConsmeticClinics() async {
    return body(() async {
      var result = await homeRemoteDatasource.getAllConsmeticClinics();
      return right(result);
    });
  }
}
