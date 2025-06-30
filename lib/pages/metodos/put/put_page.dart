import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller_permanent.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller_tag.dart';

class PutPage extends StatefulWidget {

  const PutPage({ super.key });

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(PutController());
    final controller2 = Get.put(PutControllerPermanent(), permanent: true);
    final controller3 = Get.put(PutController());
    
    final controllerTagX = Get.put(PutControllerTag(tag: 'TagX'), tag: 'TagX');
    final controllerTagY = Get.put(PutControllerTag(tag: 'TagY'), tag: 'TagY');
    final controllerTagZ = Get.put(PutControllerTag(tag: 'TagZ'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Put'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Time put: ${controller.timeStamp}'),
            Text('Time put: ${controller2.timeStamp}'),
            const WidgetInterno(),
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Get.find<PutControllerTag>(tag: 'TagX').tag),
        Text(Get.find<PutControllerTag>(tag: 'TagY').tag),
        Text(Get.find<PutControllerTag>().tag),
      ],
    );
  }
}