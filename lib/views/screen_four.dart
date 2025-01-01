import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/opacity_controller.dart';

class ScreenFour extends StatelessWidget {
  ScreenFour({super.key});

  final OpacityController controller = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Screen Four',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Container(
                width: 300,
                height: 300,
                color: Colors.red.withValues(alpha: controller.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.changeOpacity(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
