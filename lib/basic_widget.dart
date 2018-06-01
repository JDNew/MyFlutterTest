import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Basic Widget"),
      ),
      body: new Center(
        child: new RaisedButton(onPressed: () {
          Navigator.pop(context);
        }),
      ),
    );
  }
}
