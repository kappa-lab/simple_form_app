import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  String firstName;
  SettingPage({Key key, this.firstName}) : super(key: key);
  @override
  _State createState() => new _State(firstName);
}

class _State extends State<SettingPage> {
  _State(this.firstName);
  String firstName;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Setting'),
      ),
      body: new Container(
        child: new Text(
                "Hello ${firstName}!",
                style: new TextStyle(
                    fontSize: 60.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              )
            )
      )
    ;
  }
}
