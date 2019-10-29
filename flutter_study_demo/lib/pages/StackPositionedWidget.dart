import 'package:flutter/material.dart';

class StackPositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * 相当于绝对定位
     */
    return new Scaffold(
      appBar: AppBar(
        title: Text("层叠布局"),
      ),
      //通过ConstrainedBox来确保Stack占满屏幕
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            Container(
              child: Text("Hello world",style: TextStyle(color: Colors.white)),
              color: Colors.blue,
            ),
            Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Text("右下角"),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              child: Text("左上角"),
            ),
          ],
        ),
      ),
    );
  }
}
