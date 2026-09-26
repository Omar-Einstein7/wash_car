import 'package:carwash/core/routes/app_router.dart';
import 'package:carwash/core/routes/app_routes.dart';
import 'package:carwash/core/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class WashApp extends StatelessWidget {
  const WashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarWash',
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.registerScreen,
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }
}
