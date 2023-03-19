import 'package:clean_architecture_test/domain/entity/post.dart';

class PostModel extends Post {
  PostModel({required super.id, required super.title, required super.body});

  factory PostModel.fromJson(Map<String, dynamic> data) {
    return PostModel(
      id: data['id'],
      title: data['title'],
      body: data['body'],
    );
  }
}
