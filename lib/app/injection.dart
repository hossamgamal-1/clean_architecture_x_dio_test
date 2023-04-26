import 'package:clean_architecture_test/presentation/business_logic/cubit/network_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/data_source/remote_data_source/remote_data_source.dart';
import '../data/repository/get_post_repo.dart';

GetIt sL = GetIt.instance;

getInit() {
  sL.registerLazySingleton<Dio>(() => initDio());
  sL.registerLazySingleton<WebServices>(() => WebServices(sL()));
  sL.registerLazySingleton<WebServicesRepo>(() => WebServicesRepo(sL()));
  sL.registerLazySingleton<NetworkCubit>(() => NetworkCubit(sL()));
}
