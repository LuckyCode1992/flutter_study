import 'package:flutter/material.dart';

class GenerateRote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text = ModalRoute.of(context).settings.arguments;
    if (text == null) {
      text = "hello";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("GenerateRote"),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
