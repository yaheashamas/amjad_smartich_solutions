import 'package:amjad_smartich_solutions/core/failure/failure.dart';
import 'package:amjad_smartich_solutions/core/handel_body_repository_impl.dart/handel_body_repository_impl.dart';
import 'package:amjad_smartich_solutions/features/login/data/datasources/login_datasource.dart';
import 'package:amjad_smartich_solutions/features/login/domain/entities/login_entity.dart';
import 'package:amjad_smartich_solutions/features/login/domain/repositories/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginRepoImpl extends HandelBodyRepositoryImpl implements LoginRepo {
  final LoginDatasource loginDatasource;
  LoginRepoImpl(this.loginDatasource);
  @override
  Future<Either<Failure, LoginEntity>> login(
    String phone,
    String password,
  ) async {
    return body(() async {
      var result = await loginDatasource.login(phone, password);
      return right(result);
    });
  }
}
