import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/initialBinding/auth_model.dart';

class InitialBindingsPage extends StatelessWidget {
  const InitialBindingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Binding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<AuthModel>().name)
          ],
        ),
      ),
    );
  }
}
