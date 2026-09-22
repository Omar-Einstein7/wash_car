import 'package:carwash/core/routes/app_routes.dart';
import 'package:flutter/material.dart';




class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [


          IconButton(onPressed: (){
            Navigator.pushNamed(context, AppRoutes.loginScreen);
          }, icon: Icon(Icons.eighteen_mp))
        ],
      ),
    );
  }
}