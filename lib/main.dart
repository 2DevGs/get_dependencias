import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/basico/basico_home_page.dart';
import 'package:get_dependencias/pages/home_page.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_page.dart';
import 'package:get_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:get_dependencias/pages/metodos/put/put_page.dart';
import 'package:get_dependencias/pages/metodos/putAsync/put_async_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/', 
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/basico', 
          page: () => BasicoHomePage(),
        ),
        GetPage(
          name: '/metodos', 
          page: () => const MetodosHomePage(),
          children: [
            GetPage(name: '/put', page: () => const PutPage(),),
            GetPage(name: '/lazyPut', page: () => LazyPutPage(),),
            GetPage(name: '/putAsync', page: () => PutAsyncPage(),),
          ],
        ),
      ],
    );
  }
}
