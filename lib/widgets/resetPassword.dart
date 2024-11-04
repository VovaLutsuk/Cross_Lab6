import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Відновлення паролю',
          style: TextStyle(fontSize: 28), // Розмір шрифта для заголовка
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
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
              style: TextStyle(fontSize: 18), // Розмір шрифта для TextField
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text(
                        'Message',
                        style: TextStyle(fontSize: 20), // Розмір шрифта для заголовка AlertDialog
                      ),
                      content: Text(
                        "Need to implement",
                        style: TextStyle(fontSize: 18), // Розмір шрифта для контенту AlertDialog
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Відновити пароль',
                style: TextStyle(fontSize: 22), // Розмір шрифта для кнопки
              ),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Назад до авторизації',
                style: TextStyle(fontSize: 20), // Розмір шрифта для кнопки
              ),
            ),
          ],
        ),
      ),
    );
  }
}
