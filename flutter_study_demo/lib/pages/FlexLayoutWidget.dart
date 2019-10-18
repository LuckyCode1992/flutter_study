import 'package:flutter/material.dart';

class FlexLayoutWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    /**
     * Flex组件可以沿着水平或垂直方向排列子组件，
     * 如果你知道主轴方向，使用Row或Column会方便一些，
     * 因为Row和Column都继承自Flex，
     * 参数基本相同，所以能使用Flex的地方基本上都可以使用Row或Column。
     * Flex本身功能是很强大的，它也可以和Expanded组件配合实现弹性布局
     */
    return new Scaffold(
      appBar: AppBar(title: Text("弹性布局"),),
      //弹性布局的方向, Row默认为水平方向，Column默认为垂直方向
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30.0,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              height: 100.0,
              child: Flex(direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    height: 30.0,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    height: 30.0,
                  ),
                )
              ],
              ),
            ),
          ),
        ],
      )
    );
  }
  
}