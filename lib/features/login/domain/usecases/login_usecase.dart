import 'package:amjad_smartich_solutions/core/failure/failure.dart';
import 'package:amjad_smartich_solutions/features/login/domain/entities/login_entity.dart';
import 'package:amjad_smartich_solutions/features/login/domain/repositories/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final LoginRepo loginRepo;
  LoginUseCase(this.loginRepo);
  Future<Either<Failure, LoginEntity>> call(
    String phone,
    String password,
  ) async {
    return loginRepo.login(phone, password);
  }
}
