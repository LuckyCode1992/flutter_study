import 'package:flutter/material.dart';
import 'package:flutter_study_demo/pages/TipsRoute.dart';

class RouterTestRoute extends StatelessWidget {
  String result;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              //打开tipRoute 并等待返回结果
              result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return TipsRoute(
                  //路由参数 传值
                  text: "我是提示RouterTestRoute",
                );
              }));
              //输出tipRoute返回的结果
              print("路由返回值：${result}");
            },
            child: Text("打开提示页面"),
          ),
          Text("${result}")
        ],
      ),
    );
  }


}
