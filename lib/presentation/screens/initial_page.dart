import 'package:flutter/material.dart';

import '../../app/app_router.dart';
import '../resources/string_manager.dart';
import 'components/custom_app_bar.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: CustomAppBar(),
      ),
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
