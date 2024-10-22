import 'package:flutter/material.dart';
import 'team_detail.dart';



class TeamDish extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // 왼쪽 컬럼 (어둠의) 배경색 설정
          Expanded(
            child: Container(
              color: Color(0xFF393939), // 왼쪽 컬럼 배경색 설정 (어두운 회색)
              child: Padding(
                padding: const EdgeInsets.all(16.0), // 내부 여백 유지
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // 어둠의 타이틀 중앙 배치
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();  // 현재 페이지에서 뒤로 돌아가 메인으로 이동
                      },
                      child: Text(
                        '어둠의',
                        style: TextStyle(fontFamily: 'Jindo', fontSize: 50, color: Colors.white),
                        textAlign: TextAlign.center, // 중앙 정렬
                      ),
                    ),
                    // 프로필들
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // 중앙에 배치
                        crossAxisAlignment: CrossAxisAlignment.center, // 가운데 정렬
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => TeamDetail(name: "권하윤"))
                              );
                            },
                            child: Hero(
                                tag: "권하윤",
                                child: _buildProfile('권하윤', 'images/하윤.png', Colors.white)),
                          ),
                          SizedBox(height: 30), // 간격 증가
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => TeamDetail(name: "임정현"))
                              );
                            },
                            child: Hero(
                                tag: "임정현",
                                child: _buildProfile('임정현', 'images/정현.png', Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // 오른쪽 컬럼 (삼색조) 배경색 설정
          Expanded(
            child: Container(
              color: Color(0xFFF5F5F5), // 오른쪽 컬럼 배경색 설정 (연한 회색)
              child: Padding(
                padding: const EdgeInsets.all(16.0), // 내부 여백 유지
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // 삼색조 타이틀 중앙 배치
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();  // 현재 페이지에서 뒤로 돌아가 메인으로 이동
                      },
                      child: Text(
                        '삼색조',
                        style: TextStyle(fontFamily: 'Jindo', fontSize: 50),
                        textAlign: TextAlign.center, // 중앙 정렬
                      ),
                    ),
                    // 프로필들
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // 중앙에 배치
                        crossAxisAlignment: CrossAxisAlignment.center, // 가운데 정렬
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => TeamDetail(name: "이하연"))
                              );
                            },
                            child:Hero(
                                tag: "이하연",
                                child: _buildProfile('이하연', 'images/하연 (2).png', Colors.black)),
                          ),
                          SizedBox(height: 30), // 간격 증가
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => TeamDetail(name: "김서현"))
                              );
                            },
                            child: Hero(
                                tag: "김서현",
                                child: _buildProfile('김서현', 'images/서현 (2).png', Colors.black)),
                          ),
                          SizedBox(height: 30), // 간격 증가
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => TeamDetail(name: "송민제"))
                              );
                            },
                            child: Hero(
                                tag: "송민제",
                                child: _buildProfile('송민제', 'images/민제 (2).png', Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

// 프로필 구성하는 위젯
  Widget _buildProfile(String name, String imagePath, Color textColor) {
    return Column(
      children: [
        Text('🐥',
            style: TextStyle(fontSize: 20)
        ),
        // SizedBox(height: 1),
        Image.asset(
          imagePath,
          width: 200, // 이미지의 가로 크기 설정
          height: 150, // 이미지의 세로 크기 설정
          fit: BoxFit.contain,
        ),
        // SizedBox(height: 16), // 간격 증가
        Text(
          name,
          style: TextStyle(fontSize: 25, color: textColor, fontFamily: 'Free'), // 전달받은 텍스트 색상 사용
        ),
      ],
    );
  }}