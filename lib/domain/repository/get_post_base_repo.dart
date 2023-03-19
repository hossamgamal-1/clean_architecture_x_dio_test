import '../../data/model/post_model.dart';

abstract class GetPostBaseRepo {
  Future<PostModel> getPost(int id);
}
