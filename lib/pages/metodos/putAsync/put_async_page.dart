import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PutAsyncPage extends StatefulWidget {

  PutAsyncPage({ super.key }){
    Get.putAsync(() async {
      print('Inicializando SharedPreferences!!!!!!!!!!!!!!!');
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('nome', 'Put Async Exemplo');
      return prefs;
    }, 
    permanent: true,
    );
  }

  @override
  State<PutAsyncPage> createState() => _PutAsyncPageState();
}

class _PutAsyncPageState extends State<PutAsyncPage> {

  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PutAsync'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            ElevatedButton(
              onPressed: (){
                setState(() {
                nome = Get.find<SharedPreferences>().getString('nome') ?? 'Nome não encontrado!!!!';
                });
              }, 
              child: const Text('Buscar Nome')
            ),
            ElevatedButton(
              onPressed: (){
                Get.find<SharedPreferences>().setString('nome', 'Nome Alterado');
              }, 
              child: const Text('Alterar Nome')
            ),
          ],
        ),
      ),
    );
  }
}