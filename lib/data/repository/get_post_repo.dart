import 'package:clean_architecture_test/domain/repository/get_post_base_repo.dart';

import '../data_source/remote_data_source/remote_data_source.dart';
import '../model/post_model.dart';

class GetPostRepo implements GetPostBaseRepo {
  final BaseRemoteDataSource baseRemoteDataSource;

  GetPostRepo(this.baseRemoteDataSource);

  @override
  Future<PostModel> getPost(int id) => baseRemoteDataSource.getPost(id);
}
