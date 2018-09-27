import 'package:flutter/material.dart';

class GeneralFormPage extends StatefulWidget {
  GeneralFormPage({Key key}) : super(key: key);
  @override
  _State createState() => new _State();
}

class _State extends State<GeneralFormPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body: new Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new TextField(
                style: new TextStyle(
                    fontSize: 12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              )
            ]),
      ),
    );
  }
}
