import 'package:flutter/material.dart';
import 'package:team_intro/inside.dart';
import 'team_dish.dart'; // 새로운 home_page.dart 파일을 import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 배경 이미지를 꽉 채워서 추가
          Image.asset(
            'images/냉장고 배경.png', // 배경 이미지 경로
            fit: BoxFit.cover, // 화면을 꽉 채우는 배경 이미지
            width: double.infinity,
            height: double.infinity,
          ),
          // 텍스트를 이미지 상단에 배치
          Positioned(
            top: 160, // 텍스트 위치를 이미지 상단으로 이동
            left: 0,
            right: 0,
            child: Text(
              '어둠의 냉장고', // 추가할 텍스트
              textAlign: TextAlign.center, // 텍스트 중앙 정렬
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: "Jindo",
                shadows: [
                  Shadow( // 그림자 효과 추가
                    blurRadius: 10.0,
                    color: Colors.black,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
            ),
          ),
          // 중앙에 새로운 이미지 추가
          Center(
            child: GestureDetector(
              onTap: () {
                // 이미지를 누르면 MyHomePage로 이동
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => InsidePage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 150), // 텍스트와 이미지 사이의 간격 조정
                child: Image.asset(
                  'images/refcover.png', // 가운데에 추가할 이미지 경로
                  fit: BoxFit.contain,
                  width: 450, // 이미지 가로 크기
                  height: 700, // 이미지 세로 크기
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}