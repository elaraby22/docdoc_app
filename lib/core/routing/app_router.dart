import 'package:curely_app/core/di/dependency_injection.dart';
import 'package:curely_app/core/routing/routes.dart';
import 'package:curely_app/features/home/ui/home_screen.dart';
import 'package:curely_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen()));
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
