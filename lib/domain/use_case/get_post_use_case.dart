import 'package:clean_architecture_test/data/model/post_model.dart';
import 'package:clean_architecture_test/domain/repository/get_post_base_repo.dart';

class GetPostByIdUseCase {
  final GetPostBaseRepo getPostBaseRepo;

  GetPostByIdUseCase(this.getPostBaseRepo);

  Future<PostModel> call(int id) => getPostBaseRepo.getPostById(id);
}
