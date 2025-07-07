import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class HomeBindings extends StatelessWidget {
  const HomeBindings({super.key});

  @override
  Widget build(BuildContext context) {
    print('Buildando page HomeBindings');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Bindings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<BindingsController>().nome),
          ],
        ),
      ),
    );
  }
}
