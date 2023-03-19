import 'package:clean_architecture_test/app/app_router.dart';
import 'package:flutter/material.dart';

import '../resources/string_manager.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, RouteNames.appRoute),
            child: const Text(StringManager.getText),
          ),
        ),
      ),
    );
  }
}
