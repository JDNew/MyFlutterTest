import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic Widget"),
        ),
        body: new BasicColumnWidget());
  }
}

class BasicColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new RaisedButton(
          onPressed: () {
            final snackBar = new SnackBar(
              content: new Text("这是一个Snackbar"),
              action: new SnackBarAction(label: "Undo", onPressed: () {}),
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: new Text("显示Snackbar"),
        )
      ],
    );
  }
}
