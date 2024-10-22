import 'package:flutter/material.dart';
import 'team_dish.dart'; // team_dish.dart 파일 import

class InsidePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 배경 이미지를 꽉 채워서 추가
          Image.asset(
            'images/background.png', // 배경 이미지 경로
            fit: BoxFit.cover, // 화면을 꽉 채우는 배경 이미지
            width: double.infinity,
            height: double.infinity,
          ),
          // 타이틀을 상단에 배치
          Positioned(
            top: 100, // 타이틀 위치
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                '어둠의 냉장고', // 타이틀 텍스트
                style: TextStyle(
                  fontSize: 40, // 폰트 크기
                  fontFamily: "Jindo", // 폰트 스타일
                  color: Colors.white, // 텍스트 색상
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // 냉장고 내부 이미지
          Positioned(
            top: 140, // 이미지 위치
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'images/inside.png', // 냉장고 내부 이미지 경로
                width: 370, // 이미지 가로 크기
                height: 700, // 이미지 세로 크기
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Intro 버튼 (team_dish 페이지로 이동) + 이미지 추가
          Positioned(
            top: 390,
            left: 113,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => TeamDish()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'images/tramisu.png', // Intro 버튼에 추가할 이미지 경로
                    width: 100,
                    height: 80,
                  ),
                  // const SizedBox(height: 0), // 이미지와 텍스트 사이 간격
                  const Text(
                    'Intro',
                    style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Free'),
                  ),
                ],
              ),
            ),
          ),
          // Figma 버튼 (외부 URL 이동) + 이미지 추가
          Positioned(
            top: 405,
            left: 30,
            child: GestureDetector(
              child: Column(
                children: [
                  Image.asset(
                    'images/bass.png', // Figma 버튼에 추가할 이미지 경로
                    width: 100,
                    height: 55,
                  ),
                  const SizedBox(height: 5), // 이미지와 텍스트 사이 간격
                  const Text(
                    'Figma',
                    style: TextStyle(color: Colors.black, fontSize: 16,fontFamily: 'Free'),
                  ),
                ],
              ),
            ),
          ),
          // Notion 버튼 (외부 URL 이동) + 이미지 추가
          Positioned(
            top: 405,
            left: 200,
            child: GestureDetector(
              child: Column(
                children: [
                  Image.asset(
                    'images/bibim.png', // Notion 버튼에 추가할 이미지 경로
                    width: 100,
                    height: 55,
                  ),
                  const SizedBox(height: 5), // 이미지와 텍스트 사이 간격
                  const Text(
                    'Notion',
                    style: TextStyle(color: Colors.black, fontSize: 15,fontFamily: 'Free'),
                  ),
                ],
              ),
            ),
          ),
          Image.asset("images/food1.png")
        ],
      ),
    );
  }
}