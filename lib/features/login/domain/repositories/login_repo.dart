import 'package:amjad_smartich_solutions/core/failure/failure.dart';
import 'package:amjad_smartich_solutions/features/login/domain/entities/login_entity.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo {
  Future<Either<Failure, LoginEntity>> login(String phone, String password);
}
