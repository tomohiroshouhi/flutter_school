import 'package:flutter/material.dart';
import 'package:flutter_school/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String NextMessage = '次へ';

  final myFocusNode = FocusNode();
  final myController = TextEditingController();
  final items = List<String>.generate(10000, (i) => 'item $i');

  userData UserData;

  @override
  Widget build(BuildContext context) {
    //Scaffoldは全体
    return Scaffold(
      appBar: AppBar(
        title: Text('松扉のホーム画面'),
        actions: <Widget>[
          Icon(Icons.access_time),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
            child: Image.asset('images/test_img1.jpg'),
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class userData {
  userName() {
    this.name = '';
    this.syumi = '';
  }
  String name;
  String syumi;
}

