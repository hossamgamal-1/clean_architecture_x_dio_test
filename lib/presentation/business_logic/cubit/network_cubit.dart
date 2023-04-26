import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/post.dart';
import '../../../data/repository/get_post_repo.dart';

part 'network_state.dart';

class NetworkCubit extends Cubit<NetworkState> {
  NetworkCubit(this._webServicesRepo) : super(NetworkInitial());

  final WebServicesRepo _webServicesRepo;

  Future<void> fetchPost(int id) async {
    try {
      emit(FetchPostWaiting());
      Post post = await _webServicesRepo.getPostById(id);
      emit(FetchPostSuccess(post));
    } catch (error) {
      emit(FetchPostFailure(error.toString()));
    }
  }
}
