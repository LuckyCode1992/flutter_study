import 'package:flutter/material.dart';

class ButtonDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * Material 组件库中提供了多种按钮组件如RaisedButton、FlatButton、OutlineButton等
     * 所有Material 库中的按钮都有如下相同点：
     *  1.按下时都会有“水波动画”（又称“涟漪动画”，就是点击时按钮上会出现水波荡漾的动画）。
     *  2.有一个onPressed属性来设置点击回调，当按钮按下时会执行该回调，如果不提供该回调则按钮会处于禁用状态，禁用状态不响应用户点击。
     */
    return Scaffold(
      appBar: AppBar(
        title: Text("button相关"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //RaisedButton 即"漂浮"按钮，它默认带有阴影和灰色背景
            RaisedButton(
              child: Text("RaisedButton"),
              onPressed: () {
                print("点击了RaisedButton");
              },
            ),
            //FlatButton即扁平按钮，默认背景透明并不带阴影
            FlatButton(
              child: Text("FlatButton"),
              onPressed: () {
                print("点击了FlatButton");
              },
            ),
            //OutlineButton默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)
            OutlineButton(
              child: Text("OutlineButton"),
              onPressed: () {
                print("点击了OutlineButton");
              },
            ),
            //IconButton是一个可点击的Icon，不包括文字，默认没有背景，点击后会出现背景
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {
                print("点击了IconButton");
              },
            ),
            //带图标的按钮  RaisedButton、FlatButton、OutlineButton都有一个icon 构造函数，通过它可以轻松创建带图标的按钮
            RaisedButton.icon(
                onPressed: () {}, icon: Icon(Icons.send), label: Text("发送")),
            FlatButton.icon(
                onPressed: () {}, icon: Icon(Icons.add), label: Text("添加")),
            OutlineButton.icon(
                onPressed: () {}, icon: Icon(Icons.info), label: Text("信息")),
            //自定义按钮外观
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("Submit"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
            ),
            RaisedButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("Submit"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
              elevation: 2.0,
              highlightElevation: 8.0,
              disabledElevation: 0.0,
            )
          ],
        ),
      ),
    );
  }
}
