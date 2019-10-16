import 'package:flutter/material.dart';

class RowAndColumnWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RowAndColumnWidget();
  }
}

class _RowAndColumnWidget extends State<RowAndColumnWidget> {
  @override
  Widget build(BuildContext context) {
    /**
     * 主轴和纵轴
        对于线性布局，有主轴和纵轴之分，
        如果布局是沿水平方向，那么主轴就是指水平方向，
        而纵轴即垂直方向；如果布局沿垂直方向，那么主轴就是指垂直方向，而纵轴就是水平方向。
        在线性布局中，有两个定义对齐方式的枚举类MainAxisAlignment和CrossAxisAlignment，分别代表主轴对齐和纵轴对齐。
     */
    //textDirection：表示水平方向子组件的布局顺序(是从左往右还是从右往左)，默认为系统当前Locale环境的文本方向(如中文、英语都是从左往右，而阿拉伯语是从右往左)。

    // mainAxisSize：表示Row在主轴(水平)方向占用的空间，默认是MainAxisSize.max，表示尽可能多的占用水平方向的空间，
    // 此时无论子widgets实际占用多少水平空间，Row的宽度始终等于水平方向的最大宽度；而MainAxisSize.min表示尽可能少的占用水平空间，
    // 当子组件没有占满水平剩余空间，则Row的实际宽度等于所有子组件占用的的水平空间；

    // mainAxisAlignment：表示子组件在Row所占用的水平空间内对齐方式，如果mainAxisSize值为MainAxisSize.min，
    // 则此属性无意义，因为子组件的宽度等于Row的宽度。只有当mainAxisSize的值为MainAxisSize.max时，此属性才有意义，
    // MainAxisAlignment.start表示沿textDirection的初始方向对齐，如textDirection取值为TextDirection.ltr时，则MainAxisAlignment.start表示左对齐，
    // textDirection取值为TextDirection.rtl时表示从右对齐。
    // 而MainAxisAlignment.end和MainAxisAlignment.start正好相反；MainAxisAlignment.center表示居中对齐。读者可以这么理解：textDirection是mainAxisAlignment的参考系。

    //verticalDirection：表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下。

    //crossAxisAlignment：表示子组件在纵轴方向的对齐方式，
    // Row的高度等于子组件中最高的子元素高度，它的取值和MainAxisAlignment一样(包含start、end、 center三个值)，
    // 不同的是crossAxisAlignment的参考系是verticalDirection，即verticalDirection值为VerticalDirection.down时crossAxisAlignment.start指顶部对齐，
    // verticalDirection值为VerticalDirection.up时，crossAxisAlignment.start指底部对齐；而crossAxisAlignment.end和crossAxisAlignment.start正好相反；

    //children ：子组件数组。
    return new Scaffold(
      appBar: AppBar(
        title: Text("线性布局"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Text("111"),
                  Text("222"),
                  Text("333"),
                ],
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Text("111"),
                  Text("222"),
                  Text("333"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("111"),
                  Text("222"),
                  Text("333"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("111"),
                  Text("222"),
                  Text("333"),
                ],
              ),
              Row(
             mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("111"),
                  Text("222"),
                  Text("333"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("111"),
                  Text("222"),
                  Text("333"),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
