import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthViwModel extends GetxController {
  RxBool _passwordVisible = false.obs;
  RxBool _confirmPasswordVisible = false.obs;
  RxBool _loading = false.obs;

  bool get passwordVisible => _passwordVisible.value;
  set passwordVisible(bool value) => _passwordVisible.value = value;

  bool get confirmPasswordVisible => _confirmPasswordVisible.value;
  set confirmPasswordVisible(bool value) =>
      _confirmPasswordVisible.value = value;

  bool get loading => _loading.value;
  set loading(bool value) => _loading.value = value;

  final formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmPasswordcontroller = TextEditingController();
}
