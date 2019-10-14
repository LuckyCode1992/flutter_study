import 'package:flutter/material.dart';
import 'package:flutter_study_demo/pages/NewRoute.dart';
import 'package:flutter_study_demo/pages/RoterTestRoute.dart';
import 'package:flutter_study_demo/pages/EchoRoute.dart';
import 'package:flutter_study_demo/pages/GenerateRote.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_study_demo/pages/CounterWidget.dart';
import 'package:flutter_study_demo/pages/StateGetDemoWidget.dart';
import 'package:flutter_study_demo/pages/TextDemoWidget.dart';
import 'package:flutter_study_demo/pages/ButtonDemoWidget.dart';
import 'package:flutter_study_demo/pages/ImageAndIconDemoWidget.dart';
import 'package:flutter_study_demo/pages/SwitchAndCheckBoxWidget.dart';
import 'package:flutter_study_demo/pages/TextFieldWidget.dart';
import 'package:flutter_study_demo/pages/ProgressIndicatorWidget.dart';

void main() => runApp(MyApp());

// 如果无法找到真机，可以在terminal 执行命令 flutter devices
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // 名为“/”的路由作为应用的首页（home）initialRoute这个属性对应的名字就是首页
      initialRoute: "/",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //注册路由表
      routes: {
        "new_page": (context) => NewRoute(),
        // 名为“/”的路由作为应用的首页（home）
        "/": (context) => MyHomePage(
              title: 'flutter demo home page',
            ), //注册首页路由
        "echo_route": (context) => EchoRoute()
      },

      //Navigator.pushNamed(...)打开命名路由时，如果指定的路由名在路由表中已注册，则会调用路由表中的builder函数来生成路由组件；如果路由表中没有注册，才会调用
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String name = settings.name;
          print("打印日志" + name);
          if (name == "generate_rote") {
            return GenerateRote();
          }
          return MyHomePage(
            title: "你好呀",
          );
        });
      },
      //默认下面这种方式，首页
//      home: MyHomePage(
//        title: "888",
//      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter = _counter + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    final wordPair = new WordPair.random();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title + _counter.toString()),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("随机的单词:${wordPair.toString()}"),
              Text(
                'You have pushed the button this many times:${_counter}',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display2,
              ),
              Text("新增加的一行文字${_counter}"),
              FlatButton(
                child: Text("open newRoute"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("open RoterTestRoute"),
                textColor: Colors.deepOrange,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RouterTestRoute();
                  }));
                },
              ),
              FlatButton(
                  child: Text("open newRoute"),
                  textColor: Colors.amberAccent,
                  onPressed: () {
                    //通过路由名打开新路由页
                    Navigator.pushNamed(context, "new_page");
                  }),
              FlatButton(
                  child: Text("open newRoute"),
                  textColor: Colors.blue,
                  onPressed: () {
                    //通过路由名打开新路由页,并传递参数
                    Navigator.of(context)
                        .pushNamed("echo_route", arguments: "hello");
                  }),
              FlatButton(
                  child: Text("open generateRote"),
                  textColor: Colors.blue,
                  onPressed: () {
                    //通过路由名打开新路由页,并传递参数
                    Navigator.of(context)
                        .pushNamed("generate_rote", arguments: "hello");
                  }),
              FlatButton(
                child: Text("state解释"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CounterWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("获取state"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StateGetDemoWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("文本demo"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TextDemoWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("按钮demo"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ButtonDemoWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("Image和icon"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ImageAndIconDemoWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("单选框和复选框"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SwitchAndCheckBoxWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("输入框"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TextFieldWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("进度条"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProgressIndicatorWidget();
                  }));
                },
              ),
              Image.asset(
                "images/2.jpg",
                width: 100,
                height: 300,
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'click',
        child: Icon(Icons.add_box),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
