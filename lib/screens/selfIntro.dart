import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

class SelfIntro extends StatefulWidget {
  @override
  _SelfIntroState createState() => _SelfIntroState();
}

class _SelfIntroState extends State<SelfIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 소개'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Text('1번 문항'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '1번문항대답(4줄가능)',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text('2번 문항'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '2번문항대답(4줄가능)',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text('3번 문항'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '3번문항대답(4줄가능)',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text('4번 문항'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '4번문항대답(4줄가능)',
              ),
            ),
          ),
          ...writeSelfIntro(),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Material(
            color: Colors.white,
            child: Center(
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.red,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.save),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> writeSelfIntro() {
  List<Widget> selfIntroList = [];
  selfIntroList.add(Container(
    color: Colors.red,
    height: 5,
  ));
  return selfIntroList;
}

//  body: ListView(
//        physics: BouncingScrollPhysics(),
//        children: <Widget>[
//          Column(
//            children: <Widget>[
//              Padding(
//                padding: EdgeInsets.only(left: 20,top: 30,bottom: 20),
//                child: Text('1번문항'),
//              ),
//              Container(
//                //padding: EdgeInsets.only(left: 20,top: 30,bottom: 20),
//                child: Text('1번 대답'),
//              )
//            ],
//
//          ),
//          ...writeSelfIntro(),
//        ],
//
//      ),

//

//      Padding(
//            padding: EdgeInsets.all(10),
//            child: TextField(
//              decoration: InputDecoration(
//                border: OutlineInputBorder(),
//                hintText: '1번문항대답',
//              ),
//            ),
//          ),
