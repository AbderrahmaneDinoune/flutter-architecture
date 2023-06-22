import 'package:flutter/material.dart';
import 'package:flutter_mvvm_getx/core/routes/app_routes.dart';
import 'package:get/get.dart';

bool currentUser = false;

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // Vérifiez si l'utilisateur est authentifié
    if (!currentUser) {
      // Si l'utilisateur n'est pas authentifié, redirigez-le vers la page de connexion
      return const RouteSettings(name: AppRoutes.signinScreenRoute);
    } else {
      // Si l'utilisateur est authentifié, laissez-le continuer la navigation
      return null;
    }
  }
}
