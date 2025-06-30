
class PutController {
  
  String timeStamp = DateTime.now().toIso8601String();

  PutController(){
    print('PutController instanciado -> ${timeStamp}');
  }

}