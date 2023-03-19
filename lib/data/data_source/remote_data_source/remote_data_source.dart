import 'package:clean_architecture_test/core/app_constants.dart';
import 'package:clean_architecture_test/data/model/post_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<PostModel> getPostById(int id);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<PostModel> getPostById(int id) async {
    final response = await Dio().get('${AppConstants.baseUrl}/$id');
    return PostModel.fromJson(response.data);
  }
}
