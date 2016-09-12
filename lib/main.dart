import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Input + Test Driver test',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new InputTestDriverTest()));
}

class InputTestDriverTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    new Scaffold(
      appBar: new AppBar(
        title: new Text("Input + Test Driver test")),
      body: new Column(
        children: <Widget>[
          new Container(
            child: new Input(
              key: new Key('input'))),
          new Container(height: 100.0)]));
}
