import 'package:flutter/material.dart';
import 'core/app_routes.dart';
import 'core/app_theme.dart';

void main() {
  runApp(const AlphaBarberApp());
}

class AlphaBarberApp extends StatelessWidget {
  const AlphaBarberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlphaBarber22',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}
