import 'package:carwash/core/routes/app_routes.dart';
import 'package:flutter/material.dart';




class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, AppRoutes.registerScreen);
          }, icon: Icon(Icons.eighteen_mp))
        ],
      ),
    );
  }
}