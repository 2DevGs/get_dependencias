import 'package:flutter/cupertino.dart';

class BasicoController extends ChangeNotifier {

  var nome = 'Sem Nome';

  void alterarNome(String nomeAlterar) {
    nome = nomeAlterar;
    notifyListeners();
  }

}