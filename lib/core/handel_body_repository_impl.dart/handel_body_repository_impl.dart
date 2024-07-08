import 'package:amjad_smartich_solutions/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

typedef BodyBody<RV> = Future<Either<Failure, RV>> Function();

class HandelBodyRepositoryImpl {
  Future<Either<Failure, RV>> body<RV>(BodyBody<RV> body) async {
    try {
      return await body();
    } on DioException catch (dioError) {
      return left(ResponseFailure(dioError.response?.data['message'] ?? ""));
    }
  }
}
