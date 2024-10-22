import 'package:flutter/material.dart';
import 'package:loginmaker_practice/my_button/my_button.dart';

class LogInApp extends StatelessWidget {
  const LogInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login app',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const LogIn(),
    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      // 방법 2: Center 위젯 사용
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          // 방법 1: Column에서 mainAxisAlignment 설정
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Column 위젯의 자식들을 세로로 중앙 배치
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87,
                  minimumSize: const Size(double.infinity, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                ),
                onPressed: () {
                  // 로그인 동작 구현
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('images/glogo.png'),
                    const Text(
                      'Login with Google',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Image.asset('images/glogo.png'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10.0),

              MyButton(
                image: Image.asset('images/glogo.png'),
                text: const Text(
                  'Login with Custom Button',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.green,
                radius: 8.0,
                onPressed: () {
                  // 커스텀 버튼 동작 구현
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const LogInApp());
}
