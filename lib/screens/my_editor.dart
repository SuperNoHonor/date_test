import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyEditor extends StatefulWidget {
  final ValueNotifier<String> controller;

  MyEditor({Key key, this.controller}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyEditorState();
}

class _MyEditorState extends State<MyEditor> {
  bool _editble = false;
  String myString = '';
  TextEditingController controller = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    _editble = false;
  }

  _getDateWidget() {
    if (_editble) {
      return SizedBox(
          width: 100,
          child: TextField(
            controller: controller,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: 'hint'),
          ));
    } else {
      return Text(myString);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _editble,
          onChanged: (checked) {
            setState(() {
              _editble = checked;
              myString = controller.text;
              widget.controller.value = myString;
            });
          },
        ),
        _getDateWidget(),
      ],
    );
  }
}
