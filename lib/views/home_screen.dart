import 'package:flutter/material.dart';
import 'package:flutter_mvvm_getx/core/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            ElevatedButton(
                onPressed: () {
                  Get.offAndToNamed(AppRoutes.signinScreenRoute);
                },
                child: const Text("logout"))
          ],
        ),
      ),
    );
  }
}
