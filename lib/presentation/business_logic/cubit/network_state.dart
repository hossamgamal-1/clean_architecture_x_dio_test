part of 'network_cubit.dart';

@immutable
abstract class NetworkState {}

class NetworkInitial extends NetworkState {}

class FetchPostSuccess extends NetworkState {
  final Post post;

  FetchPostSuccess(this.post);
}

class FetchPostWaiting extends NetworkState {}

class FetchPostFailure extends NetworkState {
  final String error;

  FetchPostFailure(this.error);
}
