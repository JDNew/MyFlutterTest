import 'package:flutter/material.dart';
import 'basic_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Test',
      //创建app的主题
      theme: new ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600]),
      home: new HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Text"),
      ),
      body: new Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              //页面跳转
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new BasicWidget()),
              );
            },
            child: new Text('基本组件'),
          )
        ],
      ),
      //利用继承修改属于浮动按钮的主题，使用copyWith方法
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: new FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.add),
          )),

    );
  }
}
