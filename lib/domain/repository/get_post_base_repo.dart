import '../../data/model/post_model.dart';

abstract class GetPostBaseRepo {
  Future<PostModel> getPostById(int id);
}
