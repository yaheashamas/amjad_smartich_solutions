import 'package:amjad_smartich_solutions/core/failure/failure.dart';
import 'package:amjad_smartich_solutions/features/home/domain/entities/cosmetic_clinics_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, CosmeticClinicsEntity>> getAllConsmeticClinics();
}
