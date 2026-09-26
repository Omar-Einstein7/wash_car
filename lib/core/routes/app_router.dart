import 'package:carwash/core/di/service_locator.dart';
import 'package:carwash/core/routes/app_routes.dart';
import 'package:carwash/feature/home/presentation/screens/home_screen.dart';
import 'package:carwash/feature/login/presentation/screens/login_screen.dart';
import 'package:carwash/feature/register/presentation/cubit/register_cubit.dart';
import 'package:carwash/feature/register/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RegisterCubit(sl()),
            child: RegisterScreen(),
          ),
        );

      case AppRoutes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());





      default: return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text("screen not found"))));
    }
  
  }
}
