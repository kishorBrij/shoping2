import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoping2/ui/screen/navigator_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
      ),
      home: const NavigationPage(page: 0,),
      debugShowCheckedModeBanner: false,
    );
  }

}
