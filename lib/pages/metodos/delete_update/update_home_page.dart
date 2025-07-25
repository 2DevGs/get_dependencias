import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'delete_controller.dart';
import 'update_controller.dart';


class UpdateHomePage extends StatefulWidget {
  UpdateHomePage({super.key}) {
    Get.put(UpdateController(nome: 'Adicionado no inicio'));
    Get.put(DeleteController(nome: 'Adicionado no inicio'), permanent: true);
  }

  @override
  State<UpdateHomePage> createState() => _UpdateHomePageState();
}

class _UpdateHomePageState extends State<UpdateHomePage> {

  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            ElevatedButton(
              onPressed: () {
                setState(() {
                nome = Get.find<UpdateController>().nome;
                });
              },
              child: const Text('Buscar Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.replace(UpdateController(nome: 'Alterado no clique do botão'));
              },
              child: const Text('Alterando instancia'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.delete<UpdateController>();
              },
              child: const Text('Removendo instancia'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/metodos/delete');
              },
              child: const Text('Indo para Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
