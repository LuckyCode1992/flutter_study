import 'package:flutter/material.dart';

class TextDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本及样式（文字，text）"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
//             textAlign：文本的对齐方式；可以选择左对齐、右对齐还是居中。注意，对齐的参考系是Text widget本身。
//            Text文本内容宽度不足一行，Text的宽度和文本内容长度相等，那么这时指定对齐方式是没有意义的，只有Text宽度大于文本内容长度时指定此属性才有意义
              Text(
                "左对齐" * 12,
                textAlign: TextAlign.left,
              ),
              Text(
                "右对齐" * 12,
                textAlign: TextAlign.right,
              ),
              Text(
                "居中对齐" * 8,
                textAlign: TextAlign.center,
              ),
              Text(
                "结尾省率号Hello world! I'm Jack" * 4,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "放大Hello world",
                textScaleFactor: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
