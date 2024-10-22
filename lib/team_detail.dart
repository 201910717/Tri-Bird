import 'package:flutter/material.dart'; // 외부 패키지 - 절대 경로가 좋음


class TeamDetail extends StatelessWidget {
  //const DetailPage({super.key, required this.name});
  TeamDetail({super.key, required this.name});

  final String name ;

  // 이미지 이름을 키(Key)로 이미지 URL을 값(Value)으로 맵(딕셔너리) 변수를 정의
  var teamUrls = {
    "권하윤": "https://external-ssn1-1.xx.fbcdn.net/emg1/v/t13/6040564374267551348?stp=dst-src&url=https%3A%2F%2Fmedia2.giphy.com%2Fmedia%2Fv1.Y2lkPTA1NzQyMTNjMG50Z20wejFhaWE0bTh2dGxzZDJkNHl5OXphN3o1ZXE3ZGpucGp5ZyZlcD12MV9naWZzX2dpZklkJmN0PWc%2FYkmxa4KGwCDioZA3cK%2F200.gif&utld=giphy.com&ccb=13-1&oh=06_Q399sd80FKy3kbSgs3IpiA5j1riah_SJkdXxb5BkAbR5DQc&oe=6718EF5D&_nc_sid=1d65fc",
    "김서현": "https://external-ssn1-1.xx.fbcdn.net/emg1/v/t13/4280864709784976396?stp=dst-src&url=https%3A%2F%2Fmedia4.giphy.com%2Fmedia%2Fv1.Y2lkPTA1NzQyMTNjanZkbWhpcHllaGlycGlwZ3licDlzbGR5a2w5eGV1OWR5ZGhlOGpmOCZlcD12MV9naWZzX2dpZklkJmN0PWc%2FxUalpHKRsw8qb7jwO4%2F200.gif&utld=giphy.com&ccb=13-1&oh=06_Q399xiL_oRtMVAOTw8Rv-YQHVWBRWcQ18-THlWXUp0vWPpE&oe=67190578&_nc_sid=1d65fc",
    "이하연": "https://t1.daumcdn.net/cafeattach/1IHuH/355cdbe4f84fe44d9e26f3b5698c30c9ad54506b",
    "송민제": "https://external.xx.fbcdn.net/emg1/v/t13/13252175012651398491?stp=dst-src&url=https%3A%2F%2Fmedia3.giphy.com%2Fmedia%2Fv1.Y2lkPTA1NzQyMTNjaDVmY3doanFrbmtoZGZhMnN2aWgwZGF3aGpuc3E3dTJ6emc5OGo1dCZlcD12MV9naWZzX2dpZklkJmN0PWc%2FqmtmYOF6tJObX5UQI9%2F200.gif&utld=giphy.com&ccb=13-1&oh=06_Q399cuD1oKmmdxwSVb3JTCiyo79dz4U2tO-OBqa53GRyEOs&oe=6718DF29&_nc_sid=1d65fc",
    "임정현": "https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/711/23a775f6246411d250b30b24593eafcf_res.jpeg"
  };

  var teamIntro = {
    "권하윤": "어디하고 있는거라고...?",
    "김서현": "나야, 김서현",
    "이하연": "하윤이 성대모사 어때?",
    "송민제": "비비 비빔 비비빔 비빔",
    "임정현": "아 조퇴할게요..."
  };

  var teamName = {
    "권하윤": "김덕수",
    "김서현": "김서현",
    "이하연": "이하연",
    "송민제": "송민제",
    "임정현": "임정현"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${teamName[name]}",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Free",
                  color: Colors.white),
            ),
            SizedBox(height: 30,),
            Hero(
              tag: name,
              child: Image.network(
                "${teamUrls[name]}",
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "${teamIntro[name]}",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Free",
                  color: Colors.white),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text(
                "어.둠.의.삼.색.조",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Free",
                  color: Colors.white,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}