import 'package:flutter/material.dart';

class SwitchAndCheckBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SwitchAndCheckBoxWidget();
  }
}

class _SwitchAndCheckBoxWidget extends State<SwitchAndCheckBoxWidget> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("单选框和复选框"),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _switchSelected, //当前状态
            onChanged: (changeValue) {
              //重新构建页面
              setState(() {
                print("_switchSelected:${_switchSelected}");
                print("value:${changeValue}");
                _switchSelected = changeValue;
                print("_switchSelected:${_switchSelected}");
                print("value:${changeValue}");
              });
            },
          ),
          Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red, //选中时的颜色
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value;
              });
            },
          )
        ],
      ),
    );
  }
}
