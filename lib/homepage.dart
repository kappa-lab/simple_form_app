import 'package:flutter/material.dart';
import 'generalform.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new SizedBox(
                  width: 400.0,
                  height: 100.0,
                  child: new Center(
                      child: new Text(
                    "SIMPLE FORM APP",
                    style: new TextStyle(
                        fontSize: 36.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ))),
              new RaisedButton(
                  key: null,
                  onPressed: buttonPressed,
                  color: const Color(0xFFe0e0e0),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Sign In",
                        style: new TextStyle(
                            fontSize: 24.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto")),
                  ))
            ]),
      ),
    );
  }

  void buttonPressed() {
    debugPrint('sign in');
    Navigator.push(context, MaterialPageRoute(builder: (context) => GeneralFormPage()));
  }
}
