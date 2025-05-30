import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login/ui/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:doctor_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.logingRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return unDefinedRoute();
    }
  }

  Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('No Route Found')),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
