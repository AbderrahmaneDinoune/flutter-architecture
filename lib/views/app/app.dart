import 'package:flutter/material.dart';
import 'package:flutter_mvvm_getx/core/routes/app_pages.dart';
import 'package:flutter_mvvm_getx/core/routes/app_routes.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreenRoute,
      getPages: AppPages.pages(),
    );
  }
}
