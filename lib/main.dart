import 'package:flutter/material.dart';
import 'package:food_app_ui/pages/login_page.dart';
import 'package:food_app_ui/pages/root_app.dart';
import 'router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      home: LoginPage(),
    );
  }
}