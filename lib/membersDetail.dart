import 'package:flutter/material.dart';

class membersDetail extends StatelessWidget {
  final String name;

  membersDetail({required this.name});

  // 이름을 키(Key)로 이미지 URL과 설명을 담은 딕셔너리
  final Map<String, String> Urls = {
    "권하윤": "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA5MjZfMTIy%2FMDAxNzI3MzQzNDgzMjI5.-cprqvLbI7LfwuWBhnO7wV1zhDs3dnH28UW0zub6TH0g.Dola1gSjnvx-o_Nl5JbXMpUYSFE-OQrjE3yUlIkab3Yg.PNG%2Fimage.png",
    "김서현": "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA5MjRfMjQy%2FMDAxNzI3MTM3OTA5MDE1.haayFdSgAekaorG7wzg0HjlYZBD9zUe5eQn5mrcbpg8g.v1Xrj67u64BjAdJvwuidbtExWWRWiSfae5mLTYZyQfUg.JPEG%2FIMG_4188.jpg&type=sc960_832",
    "이하연": "https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/119/6fb3f53c47b7dd59a2fbec5a3aa1f6f9_res.jpeg",
    "송민제": "https://img-cdn.theqoo.net/vOFMCI.png",
    "임정현": "https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/711/23a775f6246411d250b30b24593eafcf_res.jpeg"
  };

  final Map<String, String> memberDesc = {
    "권하윤": "어디하고 있는거라고...?",
    "김서현": "나야 김서현",
    "이하연": "하윤이 성대모사 어때?",
    "송민제": "초코 옴뇸뇸",
    "임정현": "아 조퇴할게요..."
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(  // Hero 위젯 사용
              tag: name,  // 첫 번째 페이지의 tag와 동일해야 함
              child: Image.network(Urls[name]!),
            ),
            SizedBox(height: 20),
            Text(
              "설명: ${memberDesc[name]}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);  // 이전 페이지로 돌아가기
              },
              child: Text("어.둠.의 삼.색.조", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}