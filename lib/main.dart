import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // print('textbutton');
              },
              onLongPress: () {
                print('textbutton');
              },
              child: Text(
                'text button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: TextButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                print('elevatedbutton');
              },
              child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined button');
              },
              child: Text('Outlined button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                // side: BorderSide(
                //   color: Colors.black87,
                //   width: 2.0
                // ),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                print('Icon button');
              },
              icon: Icon(
                Icons.home,
                size: 30.0,
                //color: Colors.black87,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(primary: Colors.purple),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Go to Home');
              },
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, minimumSize: Size(200, 50)),
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 30.0,
                //color: Colors.black87,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                  primary: Colors.purple, onSurface: Colors.pink),
            ),
            // 버튼을 한쪽으로 정렬
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20.0),
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('TextButton'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ElevatedButton'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
