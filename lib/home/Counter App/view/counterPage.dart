import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home/Counter%20App/controller/counterController.dart';

class Counterpage extends StatelessWidget {
  const Counterpage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Counter App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.count}',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500,
                color: Colors.blue),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          controller.incremet();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
