import 'package:clean_architecture_test/data/model/post_model.dart';
import 'package:clean_architecture_test/domain/use_case/get_post_use_case.dart';
import 'package:flutter/material.dart';

import '../../core/injection.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<PostModel>(
        future: GetPostByIdUseCase(sL())(4),
        builder: (context, snapshot) {
          return snapshot.hasError
              ? const Center(child: Text('error'))
              : snapshot.connectionState == ConnectionState.waiting
                  ? const Center(child: CircularProgressIndicator())
                  : snapshot.hasData
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('id = ${snapshot.data!.id}'),
                              const SizedBox(height: 20),
                              Text('title = ${snapshot.data!.title}'),
                              const SizedBox(height: 20),
                              Text('body = ${snapshot.data!.body}'),
                            ],
                          ),
                        )
                      : const Text('error');
        },
      ),
    );
  }
}
