import 'package:flutter_mvvm_getx/core/middlewares/auth_middleware.dart';
import 'package:flutter_mvvm_getx/core/routes/app_routes.dart';
import 'package:flutter_mvvm_getx/views/home_screen.dart';
import 'package:flutter_mvvm_getx/views/sign_up_screen.dart';
import 'package:flutter_mvvm_getx/views/signin_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage<dynamic>>? pages() {
    return [
      GetPage(
          name: AppRoutes.homeScreenRoute,
          page: () => const HomeScreen(),
          middlewares: [AuthMiddleware()]),
      GetPage(
        name: AppRoutes.signinScreenRoute,
        page: () => const SigninScreen(),
      ),
      GetPage(
        name: AppRoutes.signupScreenRoute,
        page: () => const SignupScreen(),
      ),
    ];
  }
}
