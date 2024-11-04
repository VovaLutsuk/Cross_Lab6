import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Авторизація',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Логін',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue, // Колір контуру
                    width: 2.0, // Товщина контуру
                  ),
                ),
                filled: true,
                fillColor: Colors.grey[200], // Колір фону
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue, // Колір контуру
                    width: 2.0, // Товщина контуру
                  ),
                ),
                filled: true,
                fillColor: Colors.grey[200], // Колір фону
              ),
              obscureText: true,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text(
                        'Помилка',
                        style: TextStyle(fontSize: 20),
                      ),
                      content: Text(
                        "Введені дані не правильні",
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Увійти',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Реєстрація',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reset-password');
              },
              child: Text(
                'Забули пароль?',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
