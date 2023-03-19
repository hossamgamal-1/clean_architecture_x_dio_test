import 'package:clean_architecture_test/core/app_constants.dart';
import 'package:clean_architecture_test/data/model/post_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<PostModel> getPost(int id);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<PostModel> getPost(int id) async {
    final response = await Dio().get('${AppConstants.baseUrl}/$id');
    return PostModel.fromJson(response.data);
  }
}
