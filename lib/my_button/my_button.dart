import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget image; // 필수 매개변수로, null이 될 수 없으므로 non-nullable
  final Widget? text; // 선택적 매개변수로 nullable
  final Color? color; // 선택적 매개변수로 nullable
  final double? radius; // 선택적 매개변수로 nullable
  final VoidCallback? onPressed; // 선택적 매개변수로 nullable

  const MyButton({
    required this.image, // 필수 매개변수
    this.text, // 선택적
    this.color, // 선택적
    this.radius, // 선택적
    this.onPressed, // 선택적
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.white, // 기본값 설정
        foregroundColor: Colors.black87, // 텍스트 색상
        minimumSize: const Size(double.infinity, 50), // 버튼 크기
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 4.0), // 기본값 설정
          ),
        ),
      ),
      onPressed: onPressed ?? () {}, // 기본값 설정, onPressed 없으면 빈 콜백
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          image, // 필수 매개변수로 null이 아니므로 그대로 사용 가능
          text ?? const SizedBox.shrink(), // text가 null일 경우 빈 공간
          Opacity(
            opacity: 0.0,
            child: Image.asset('images/glogo.png'), // 이미지 경로 확인 필요
          ),
        ],
      ),
    );
  }
}
