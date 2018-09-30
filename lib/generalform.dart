import 'package:flutter/material.dart';

class GeneralFormPage extends StatefulWidget {
  GeneralFormPage({Key key}) : super(key: key);
  @override
  _State createState() => new _State();
}

class _State extends State<GeneralFormPage> {
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body: new Center(
        child: new Container(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                    // color: const Color(0xFFEEEEEE),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'First Name',
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                        ),
                        new TextFormField(
                          style: new TextStyle(
                              fontSize: 24.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                        ),
                      ],
                    )),
                new Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
                    // color: const Color(0xFFEEEEEE),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          'Last Name',
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                        ),
                        new TextFormField(
                          style: new TextStyle(
                              fontSize: 24.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                        ),
                      ],
                    )),
                new Text(
                  "Terms of Use",
                  style: new TextStyle(
                      fontSize: 24.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                Row(
                  children: <Widget>[
                    new Checkbox(
                        key: null, onChanged: checkChanged, value: _agree),
                    new SizedBox(
                        height: 30.0,
                        child: new FlatButton(
                            key: null,
                            onPressed: buttonPressed,
                            color: const Color(0xFFECECEC),
                            child: new Text(
                              "Show Detail",
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Roboto"),
                            )))
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.all(20.0),
                ),
                new SizedBox(
                    width: 300.0,
                    height: 60.0,
                    child: new RaisedButton(
                        key: null,
                        onPressed: buttonPressed,
                        color: const Color(0xFFe0e0e0),
                        child: new Text(
                          "OK",
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                        ))),
              ]),
          padding: const EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 100.0),
          alignment: Alignment.center,
        ),
      ),
    );
  }

  void buttonPressed() {}

  void checkChanged(bool value) {
    setState(() => _agree = value);
  }
}
