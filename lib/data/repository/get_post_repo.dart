import '../data_source/remote_data_source/remote_data_source.dart';
import '../model/post.dart';

class WebServicesRepo implements WebServices {
  final WebServices webServices;

  WebServicesRepo(this.webServices);
  @override
  Future<Post> getPostById(int id) async {
    return await webServices.getPostById(id);
  }
}
