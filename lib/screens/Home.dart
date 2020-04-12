import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selfIntro.dart';
import 'baseInfo.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => SelfIntro()));
              },
              icon: Icon(Icons.person_add),
            ),
            Container(
              child: Text('내 소개'),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => baseInfo()));
              },
              icon: Icon(Icons.info),
            ),
            Container(
              child: Text('기본정보'),
            ),
          ],
          // mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
