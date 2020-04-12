import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class baseInfo extends StatefulWidget {
  @override
  _baseInfoState createState() => _baseInfoState();
}

class _baseInfoState extends State<baseInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기본정보'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.info),
              ),
              Container(
                child: Text('후...'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
