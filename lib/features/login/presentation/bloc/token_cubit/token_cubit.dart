import 'package:hydrated_bloc/hydrated_bloc.dart';

class TokenCubit extends HydratedCubit<String?> {
  TokenCubit() : super(null);
  void verification(String token) => emit(token);
  void logout() => emit(null);

  @override
  String? fromJson(Map<String, dynamic> json) {
    return json.isNotEmpty ? json["token"] : null;
  }

  @override
  Map<String, dynamic>? toJson(String? state) {
    return state != null ? {"token": state} : {};
  }
}
