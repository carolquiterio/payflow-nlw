import 'package:app/modules/login/login_page.dart';
import 'package:app/modules/splash/splash_page.dart';
import 'package:app/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Payflow",
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
