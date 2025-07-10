
import 'package:get/get.dart';

class MiddlewareBinding extends GetMiddleware {
  

  //executado antes da chamada da pagina
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!onBindingsStart: $onBindingsStart');
    // bindings?.add(BindingsBuilder.put(() => 'Novo Binding'));
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!onPageBuildStart: $onPageBuildStart');
    return super.onPageBuildStart(page);
  }

}