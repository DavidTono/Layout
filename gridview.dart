import 'package:flutter/material.dart';

class MyNote {
  Card getStructuredGridCell(name, image) {
    return new Card(
        elevation: 1.5,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Image(image: new AssetImage('data_repo/img/' + image)),
            new Center(
              child: new Text(name),
            )
          ],
        ));
  }

  GridView build() {
    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("New", "note/new.png"),
        getStructuredGridCell("Note 1", "note/note.png"),
        getStructuredGridCell("Note 2", "note/note.png"),
        getStructuredGridCell("Note 3", "note/note.png"),
      ],
    );
  }
}
