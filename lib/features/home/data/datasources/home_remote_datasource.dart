import 'package:amjad_smartich_solutions/core/network/api.dart';
import 'package:amjad_smartich_solutions/features/home/domain/entities/cosmetic_clinics_entity.dart';

import '../../../../core/network/end_point.dart';

class HomeRemoteDatasource {
  Future<CosmeticClinicsEntity> getAllConsmeticClinics() async {
    var response = await Api.dio.post(
      EndPoint.cosmeticClinics,
      queryParameters: {"type": "clinic"},
    );
    return CosmeticClinicsEntity.fromJson(response.data);
  }
}
