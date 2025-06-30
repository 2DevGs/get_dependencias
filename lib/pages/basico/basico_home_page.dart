import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/basico/basico_controller.dart';

class BasicoHomePage extends StatelessWidget {

  final controller = Get.put(BasicoController());

  BasicoHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basico Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Text(
                  controller.nome,
                  style: Theme.of(context).textTheme.titleLarge,
                );
              },
            ),
            const WidgetInterno()
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Widget Interno'),
        const SizedBox(
           height: 20,
        ),
        ElevatedButton(
          onPressed: () => Get.find<BasicoController>().alterarNome('Gustavo Dias'),
          child: const Text('Alterar nome'),
        ),
      ],
    );
  }
}