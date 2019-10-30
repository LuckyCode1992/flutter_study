import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("相对布局和对齐"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: Align(
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.yellow[50],
              child: Align(
                alignment: Alignment.topLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              color: Colors.red[50],
              child: Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: Alignment.center,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: Align(

                //FractionalOffset（x，y）原点是左上角
                alignment: FractionalOffset(0.0, 0.6),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              color: Colors.green[50],
              child: Align(
                widthFactor: 2,
                heightFactor: 2,
                //Alignment(x,y) 原点是中心点
                alignment: Alignment(-1, 0.0),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
