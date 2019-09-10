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
//             height：该属性用于指定行高，但它并不是一个绝对值，而是一个因子，具体的行高等于fontSize*height
//            fontFamily ：由于不同平台默认支持的字体集不同
//            fontSize：该属性和Text的textScaleFactor都用于控制字体大小
//            fontSize可以精确指定字体大小，而textScaleFactor只能通过缩放比例来控制。
//            textScaleFactor主要是用于系统字体大小设置改变时对Flutter应用字体进行全局调整，而fontSize通常用于单个文本，字体大小不会跟随系统字体大小变化
              Text(
                "TextStyle用于指定文本显示的样式如颜色、字体、粗细、背景",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    height: 1.2,
                    fontFamily: "Courier",
                    background: new Paint()..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(text: "home:"),
                TextSpan(
                  text: "h1435256",
                  style: TextStyle(
                      color: Colors.yellow,
                      height: 1.5,
                      decoration: TextDecoration.lineThrough),
                )
              ])),
              DefaultTextStyle(
                //1.设置文本默认样式
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("hello world"),
                    Text("I am Jack"),
                    Text(
                      "I am Jack",
                      style: TextStyle(
                          inherit: false, //2.不继承默认样式
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
