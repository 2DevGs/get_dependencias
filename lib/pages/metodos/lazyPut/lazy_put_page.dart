import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_controller.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {

  LazyPutPage({ super.key }){
    Get.lazyPut(() => LazyPutController());

    // Mata a instancia- porém mantém a factory ativa dentro do Get fazendo com que
    //  tenha a possibilidade de acessa-la de qualquer lugar para sempre dentro do Get.
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);

    // Mantém a instancia dentro do Get, sendo assim quando você pedir a classe
    //ele retornar-a mesma instancia anterior!!!!
    // Get.put(LazyPutFenixController(), permanent: true);
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {

  String nome = '';
  String nomeFenix = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LazyPut Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            Text('Nome Fenix: $nomeFenix'),
            ElevatedButton(
              onPressed: (){
                final controller = Get.find<LazyPutController>();
                setState(() {
                  nome = controller.nome;
                });
              },
              child: const Text('Buscar nome'),
            ),
            ElevatedButton(
              onPressed: (){
                final controller = Get.find<LazyPutController>();
                controller.nome = 'Jornada GetX';
              },
              child: const Text('Alterar nome'),
            ),
            ElevatedButton(
              onPressed: (){
                final controller = Get.find<LazyPutFenixController>();
                setState(() {
                  nomeFenix = controller.nome;
                });
              },
              child: const Text('Buscar Nome Fenix'),
            ),
            ElevatedButton(
              onPressed: (){
                final controller = Get.find<LazyPutFenixController>();
                controller.nome = 'Jornada GetX Fenix';
              },
              child: const Text('Alterar Nome Fenix'),
            ),
          ],
        ),
      ),
    );
  }
}