import 'package:clean_architecture_test/app/app_router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();

  static MyApp? _myApp;

  factory MyApp.getInstance() {
    _myApp ??= const MyApp._internal();
    return _myApp!;
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clean Architecture Test',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.getRoute,
    );
  }
}
