import 'package:clean_architecture_test/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:get_it/get_it.dart';

import '../data/repository/get_post_repo.dart';
import '../domain/repository/get_post_base_repo.dart';

GetIt sL = GetIt.instance;

getInit() {
  sL.registerLazySingleton<BaseRemoteDataSource>(() => RemoteDataSource());
  sL.registerLazySingleton<GetPostBaseRepo>(() => GetPostRepo(sL()));
}
