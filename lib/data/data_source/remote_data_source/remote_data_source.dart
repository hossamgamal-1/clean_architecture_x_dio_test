import 'package:clean_architecture_test/app/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/post.dart';

part 'remote_data_source.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET('{id}')
  Future<Post> getPostById(@Path() int id);
}

Dio initDio() {
  BaseOptions baseOptions = BaseOptions(
    baseUrl: AppConstants.baseUrl,
    connectTimeout: const Duration(seconds: 10),
  );
  Dio dio = Dio(baseOptions);
  dio.interceptors.add(LogInterceptor(
    request: true,
    requestBody: true,
    responseBody: true,
    error: true,
  ));
  return dio;
}
