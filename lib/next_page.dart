import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    ///Scaffoldは全体
    return Scaffold(
      appBar: AppBar(
        title: Text('次のページです'),
        actions: <Widget>[
          Icon(Icons.add_comment),
        ],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this.name),
            Center(
              child: RaisedButton(
                child:Text('前に戻る'),
                onPressed: (){
                  //ここに押したら反応するイベントを書く
                  //画面遷移のイベントをかく
                  Navigator.pop(context,'しょーひさん天才です。');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}