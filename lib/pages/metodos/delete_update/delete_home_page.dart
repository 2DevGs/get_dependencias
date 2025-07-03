import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'delete_controller.dart';


class DeleteHomePage extends StatefulWidget {
  
  const DeleteHomePage({Key? key}) : super(key: key);


  @override
  State<DeleteHomePage> createState() => _DeleteHomePageState();
}

class _DeleteHomePageState extends State<DeleteHomePage> {

  String nome = '';

  @override
  void dispose() {
    Get.delete<DeleteController>(force: true);
    super.dispose();
  }

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
                nome = Get.find<DeleteController>().nome;
                });
              },
              child: const Text('Buscar Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.replace(DeleteController(nome: 'Alterado no clique do botão'));
              },
              child: const Text('Alterando instancia'),
            ),
          ],
        ),
      ),
    );
  }
}
