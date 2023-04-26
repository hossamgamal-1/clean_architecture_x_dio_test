import 'package:clean_architecture_test/app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/cubit/network_cubit.dart';
import 'components/custom_app_bar.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: BlocProvider(
        create: (context) => NetworkCubit(sL())..fetchPost(4),
        child: BlocBuilder<NetworkCubit, NetworkState>(
          builder: (context, state) {
            if (state is FetchPostFailure) {
              return Center(child: Text(state.error));
            } else if (state is FetchPostSuccess) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('id = ${state.post.id}'),
                    const SizedBox(height: 20),
                    Text('title = ${state.post.title}'),
                    const SizedBox(height: 20),
                    Text('body = ${state.post.body}'),
                  ],
                ),
              );
            } else if (state is FetchPostWaiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
