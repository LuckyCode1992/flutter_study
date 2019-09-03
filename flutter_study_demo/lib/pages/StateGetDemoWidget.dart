import 'package:flutter/material.dart';

class StateGetDemoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateGetState();
  }
}

class _StateGetState extends State<StateGetDemoWidget> {
  //定义一个globalKey, 由于GlobalKey要保持全局唯一性，我们使用静态变量存储
  static GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        // ignore: missing_return
        child: Builder(builder: (context) {
          return Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                  child: Text("ancestorStateOfType方法获取"),
                  onPressed: () {
                    // 查找父级最近的Scaffold对应的ScaffoldState对象
                    ScaffoldState _state = context
                        .ancestorStateOfType(TypeMatcher<ScaffoldState>());
                    //调用ScaffoldState的showSnackBar来弹出SnackBar
                    _state.showSnackBar(SnackBar(content: Text("我是snackbar")));
                  },
                ),
                FlatButton(
                  child: Text("直接通过of静态方法来获取ScaffoldState"),
                  onPressed: () {
                    ScaffoldState _state1 = Scaffold.of(context);
                    _state1
                        .showSnackBar(SnackBar(content: Text("我是snackbar1")));
                  },
                ),
                FlatButton(
                  child: Text("通过GlobalKey来获取State对象"),
                  onPressed: () {
                    //  注意：使用GlobalKey开销较大，如果有其他可选方案，应尽量避免使用它。另外同一个GlobalKey在整个widget树中必须是唯一的，不能重复。
                    ScaffoldState _state2 = _globalKey.currentState;
                    _state2
                        .showSnackBar(SnackBar(content: Text("我是snackbar2")));
                  },
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
