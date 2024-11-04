import 'package:flutter/material.dart';
import 'widgets/registration.dart';
import 'widgets/resetPassword.dart';
import 'widgets/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),




      // Додаємо маршрути
      initialRoute: '/',  // Початковий маршрут
      routes: {
        '/': (context) => LoginScreen(),  // Екран авторизації
        '/register': (context) => RegisterScreen(),  // Екран реєстрації
        '/reset-password': (context) => ResetPasswordScreen(),  // Екран відновлення паролю
      },
    );
  }
}