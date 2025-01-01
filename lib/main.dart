import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/views/home_screen.dart';
import 'package:getx_state_management/views/screen_four.dart';
import 'package:getx_state_management/views/screen_one.dart';
import 'package:getx_state_management/views/screen_three.dart';
import 'package:getx_state_management/views/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        getPages: [
          GetPage(name: '/', page: () => HomeScreen()),
          GetPage(name: '/screenOne', page: () => ScreenOne()),
          GetPage(name: '/screenTwo', page: () => ScreenTwo()),
          GetPage(name: '/screenThree', page: () => ScreenThree()),
          GetPage(name: '/screenFour', page: () => ScreenFour()),
        ],
      ),
    );
  }
}
