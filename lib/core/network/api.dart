import 'package:amjad_smartich_solutions/features/login/presentation/bloc/token_cubit/token_cubit.dart';
import 'package:dio/dio.dart';

class Api {
  static String baseUrl = 'http://glowme-up.com';

  static var options = BaseOptions(
    baseUrl: baseUrl,
    receiveDataWhenStatusError: true,
  );
  static final Dio dio = Dio(options);

  static initializeInterceptors() async {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          var headers = {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${TokenCubit().state}",
            // "Accept-Language": "",
          };
          request.headers.addAll(headers);
          print("____ REQUEST ${request.path}__________________");
          print("${request.method} ${request.path}");
          print("${request.headers}");
          print("${request.data}");
          print("______________________________________________");
          return handler.next(request);
        },
        onResponse: (response, handler) async {
          print("_RESPONSE ${response.requestOptions.path} __");
          print(response.data.toString());
          print("____________________________________________");
          return handler.next(response);
        },
        onError: (error, handler) {
          print("_ ERROR ${error.response?.requestOptions.path}_");
          print('error => ${error.response}');
          print('handler => $handler');
          print("________________________________________________");
          return handler.next(error);
        },
      ),
    );
  }
}
