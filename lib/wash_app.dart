
import 'package:carwash/core/routes/app_router.dart';
import 'package:carwash/core/routes/app_routes.dart';
import 'package:flutter/material.dart';


class WashApp extends StatelessWidget {
  const WashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.registerScreen,
      onGenerateRoute:AppRouter.onGenerateRoutes,
    );
  }
}