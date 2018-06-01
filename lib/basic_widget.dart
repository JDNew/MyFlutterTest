import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return new DefaultTabController(length: 3, child: new Scaffold(
    appBar: new AppBar(
      bottom: new TabBar(tabs: [
        new Tab(icon: new Icon(Icons.directions_car),),
        new Tab(icon: new Icon(Icons.directions_boat),),
        new Tab(icon: new Icon(Icons.directions_bike),)
      ]),
      title: new Text("Basic Widget"),
    ),
    body: new TabBarView(children: [
      new BasicColumnWidget(),
      new Icon(Icons.directions_boat),
      new Icon(Icons.directions_bike)
    ]),
  ));
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
