import 'package:amjad_smartich_solutions/core/failure/failure.dart';
import 'package:amjad_smartich_solutions/features/home/domain/entities/cosmetic_clinics_entity.dart';
import 'package:amjad_smartich_solutions/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class GetAllConsmeticClinicsUsecase {
  final HomeRepo homeRepo;
  GetAllConsmeticClinicsUsecase(this.homeRepo);
  Future<Either<Failure, CosmeticClinicsEntity>> call() async {
    return await homeRepo.getAllConsmeticClinics();
  }
}
