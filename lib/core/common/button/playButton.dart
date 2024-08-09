import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayButtonController extends GetxController {
  var isPressed = false.obs;

  void onTapDown() {
    isPressed.value = true;
  }

  void onTapUp(Function onTap) {
    isPressed.value = false;
    onTap();
  }

  void onTapCancel() {
    isPressed.value = false;
  }
}

class MyButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final TextStyle textStyle;

  MyButton({
    required this.label,
    required this.onTap,
    this.height = 45,
    this.width = 171,
    this.color = Colors.blue,
    this.borderRadius = 8.0,
    this.textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  });

  final PlayButtonController controller = Get.put(PlayButtonController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => controller.onTapDown(),
      onTapUp: (_) => controller.onTapUp(onTap),
      onTapCancel: controller.onTapCancel,
      child: Obx(() => AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: controller.isPressed.value ? color.withOpacity(0.7) : color,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: controller.isPressed.value
              ? []
              : [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: textStyle,
          ),
        ),
      )),
    );
  }
}
