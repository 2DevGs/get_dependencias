
import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class BindingsExample extends Bindings {

  BindingsExample(){
    print('Iniciando BindingsExample');
  }

  @override
  void dependencies() {
    print('Carregando as instancias');
    Get.put(BindingsController(nome: 'Inicializado dentro do binding'));
  }
  
}