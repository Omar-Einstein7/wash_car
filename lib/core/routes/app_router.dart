import 'package:carwash/core/di/service_locator.dart';
import 'package:carwash/core/routes/app_routes.dart';
import 'package:carwash/feature/register/presentasion/cubit/register_cubit.dart';
import 'package:carwash/feature/register/presentasion/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppRouter {

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreen:

        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => RegisterCubit(sl()),
              child: RegisterScreen(),
            ));
    }
  }


}