import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String? isSelectedItem = '日曜日';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.50),
        child: AppBar(
          title: Text('家計簿', style: TextStyle(fontSize: 25),),
          centerTitle: true,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60,),
            Text('カレンダーの開始曜日', style: TextStyle(fontSize: 23),),
            SizedBox(height: 45,),
            SizedBox(
              width: 72,
              height: 50,
              child:DropdownButton(
                underline: Container(
                  height: 3,
                  color: Colors.black,
                ),
                items: [
                  DropdownMenuItem(child: Text('日曜日'),
                    value: '日曜日',
                  ),
                  DropdownMenuItem(child: Text('月曜日'),
                    value: '月曜日',
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    isSelectedItem = value;
                  });
                },
                value: isSelectedItem,
              ),
            ),
            SizedBox(height: 50,),
            Text('カテゴリ設定', style: TextStyle(fontSize: 25),),
            SizedBox(height: 30,),
            SizedBox(
              width: 120,
              height: 60,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: Colors.black
                    )
                ),
                onPressed: () {}, child: Text('支出カテゴリ'),),
            ),
            SizedBox(height: 40,),
            SizedBox(
              width: 120,
              height: 60,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: Colors.black
                    )
                ),
                onPressed: () {}, child: Text('収入カテゴリ'),),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
