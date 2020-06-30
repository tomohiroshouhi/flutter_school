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
        child: Column(
          children: <Widget>[
            //Image.network('https://pbs.twimg.com/profile_images/1228580158124122112/8-4y_x2k_400x400.jpg'),
            //Image.asset('images/test_img1.jpg'),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: '名前を入れてください',
                hintText: '田中太郎',
              ),
              onChanged: (text) {
                UserData.name = text;
              },
            ),
            TextField(
              controller: myController,
              focusNode: myFocusNode,
              decoration: InputDecoration(
                labelText: '趣味を入れてください',
                hintText: '釣り',
              ),
              onChanged: (text) {
                UserData.syumi = text;
              },
            ),
            RaisedButton(
              child:Text('新規登録する'),
              onPressed: () async {
                showDialog(
                    context: context,
                  builder: (context) {
                      return AlertDialog(
                        content: Text(myController.text),
                      );
                  }
                );
                //ここに押したら反応するイベントを書く
                // TODO:ここにフォーカスイベントをかく。
                //myFocusNode.requestFocus();
//                // TODO:画面遷移のイベントをかく
//                final result = await Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => NextPage('日本晴')
//                  ),
//                );
                //NextMessage = NextMessage + result;
                //print(result);
              },
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

