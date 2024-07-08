import 'package:amjad_smartich_solutions/core/network/api.dart';
import 'package:amjad_smartich_solutions/core/network/end_point.dart';
import 'package:amjad_smartich_solutions/features/login/domain/entities/login_entity.dart';

class LoginDatasource {
  Future<LoginEntity> login(String phone, String password) async {
    var response = await Api.dio.post(
      EndPoint.login,
      data: {
        "phone": phone,
        "password": password,
      },
    );
    return LoginEntity.fromJson(response.data);
  }
}
