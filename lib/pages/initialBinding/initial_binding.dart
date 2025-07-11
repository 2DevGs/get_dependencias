
import 'package:get/get.dart';
import 'package:get_dependencias/pages/initialBinding/auth_model.dart';

class InitialBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(AuthModel(name: 'Gustavo Dias', email: 'dev.gustavoserrano@gmail.com', curso: 'Jornada Getx'));
  }

}