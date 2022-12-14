import 'package:flutter/material.dart';
import 'package:food_app_getx/src/controller/food_controller.dart';
import 'package:food_app_getx/src/view/screen/home_screen.dart';
import 'package:get/get.dart';

final FoodController controller = Get.put(FoodController());

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: controller.theme.value,
        home: HomeScreen(),
      );
    });
  }
}
