import 'package:flutter/material.dart';
import 'login_app/login.dart'; // login.dart 파일에서 LogIn 위젯을 가져옴

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Firebase login app',
      home: LogIn(), // 여기서 login.dart의 LogIn 위젯을 사용
    );
  }
}
