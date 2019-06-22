import 'package:flutter/material.dart';
import 'package:grid_layout/gridview.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final MyNote note = new MyNote();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("MyNote"),
        ),
        body: note.build(),
      ),
    );
  }
}
