// i > fm 단축키 활용
import 'package:flutter/material.dart';

// 앱의 시작점 runApp 최상위 앱 (위젯)<이 들어가야함
// 함수는 소문자 시작
// 클래스는 대문자 시작
// 낙타표기법사용
// 마지막 세미콜론 사용 ;
void main() => runApp(MyApp());

//stl 단축키
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱을 총칭하는 이름
      title: 'First app',
      theme: ThemeData(
          // 특정 음영 기본색 설정
          primarySwatch: Colors.blue),
      // 가장 먼저 보여지는 화면
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 앱화면에 나오는 title
        title: Text('First app'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}

// 1. flutter/material import 하기
// 2. 컴파일러에게 시작점 알려주기 위해 void main 불러오기
// 3. flutter 최상위 함수 runApp 함수 불러오기
// 4. runApp함수 내에 MyApp이라는 커스텀 위젯이름을 argument로 넣어주기
// 5. StatelessWidget으로 커스텀 위젯 생성하기
// 6. return MaterialApp 으로 바꿔주기
// 7. title 지정해주기
// 8. theme: ThemeData 불러오기
// 9. primarySwatch 불러오기
// 10. blue 색상으로 지정해주기
// 11. home: 에서 MyHomePage() 지정해주기
