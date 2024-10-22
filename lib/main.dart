import 'package:flutter/material.dart';
import 'membersDetail.dart';

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
      home: RefrigeratorPage(),
    );
  }
}

class RefrigeratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 인테리어 이미지
          Positioned.fill(
            child: Image.asset(
              'images/인테리어.png',
              fit: BoxFit.cover,
            ),
          ),
          // 냉장고 이미지와 아이템
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RefrigeratorOpenPage()),
                    );
                  },
                  child: Image.asset('images/ref.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RefrigeratorOpenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 인테리어 이미지
          Positioned.fill(
            child: Image.asset(
              'images/인테리어.png',
              fit: BoxFit.cover,
            ),
          ),
          // 열림 이미지와 아이템
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/open.png',
                fit: BoxFit.cover,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyHomePage(title: '어둠의 삼색조')),
                    );
                  },
                  child: Text('다음 페이지로 이동'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Color(0xFF393939),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text(
                      '어둠의',
                      style: TextStyle(fontFamily: 'Jindo', fontSize: 50, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => membersDetail(name: "권하윤"))
                                );
                              },
                              child: Hero(
                                tag: "권하윤",
                                child: _buildProfile('권하윤', 'images/하윤.png', Colors.white),
                              )
                          ),
                          SizedBox(height: 40),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => membersDetail(name: "임정현"))
                                );
                              },
                              child: Hero(
                                tag: "임정현",
                                child: _buildProfile('임정현', 'images/정현.png', Colors.white),
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFF5F5F5),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text(
                      '삼색조',
                      style: TextStyle(fontFamily: 'Jindo', fontSize: 50),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => membersDetail(name: "이하연"))
                              );
                            },
                            child: _buildProfile('이하연', 'images/하연 (2).png', Colors.black),
                          ),
                          SizedBox(height: 40),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => membersDetail(name: "김서현"))
                                );
                              },
                              child: Hero(
                                tag: "김서현",
                                child: _buildProfile('김서현', 'images/서현 (2).png', Colors.black),
                              )
                          ),
                          SizedBox(height: 40),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => membersDetail(name: "송민제"))
                                );
                              },
                              child: Hero(
                                tag: "송민제",
                                child: _buildProfile('송민제', 'images/민제 (2).png', Colors.black),
                              )
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

  Widget _buildProfile(String name, String imagePath, Color textColor) {
    return Column(
      children: [
        Text('🐥', style: TextStyle(fontSize: 20)),
        SizedBox(height: 3),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => membersDetail(name: name)),
            );
          },
          child: Image.asset(
            imagePath,
            width: 200,
            height: 150,
          ),
        ),
        SizedBox(height: 16),
        Text(
          name,
          style: TextStyle(fontSize: 25, color: textColor, fontFamily: 'Free'),
        ),
      ],
    );
  }
}

class membersDetail extends StatelessWidget {
  final String name;

  const membersDetail({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name의 상세정보'),
      ),
      body: Center(
        child: Text('$name의 상세정보 화면'),
      ),
    );
  }
}
