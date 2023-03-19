import 'package:clean_architecture_test/data/model/post_model.dart';
import 'package:clean_architecture_test/domain/repository/get_post_base_repo.dart';

class GetPostUseCase {
  final GetPostBaseRepo getPostBaseRepo;

  GetPostUseCase(this.getPostBaseRepo);

  Future<PostModel> call(int id) => getPostBaseRepo.getPostById(id);
}
