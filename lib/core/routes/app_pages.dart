import 'package:flutter_mvvm_getx/core/middlewares/auth_middleware.dart';
import 'package:flutter_mvvm_getx/core/routes/app_routes.dart';
import 'package:flutter_mvvm_getx/views/home_screen.dart';
import 'package:flutter_mvvm_getx/views/auth/sign_up_screen.dart';
import 'package:flutter_mvvm_getx/views/auth/signin_screen.dart';
import 'package:get/get.dart';

import '../binding/auth_binding.dart';

class AppPages {
  static List<GetPage<dynamic>>? pages() {
    return [
      GetPage(
          name: AppRoutes.homeScreenRoute,
          page: () => const HomeScreen(),
          middlewares: [AuthMiddleware()]),
      GetPage(
        name: AppRoutes.signinScreenRoute,
        bindings: [AuthBinding()],
        page: () => const SigninScreen(),
      ),
      GetPage(
        name: AppRoutes.signupScreenRoute,
        page: () => SignupScreen(),
      ),
    ];
  }
}
