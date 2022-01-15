import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                  width: 400.0,
                  height: 100.0,
                  child: Center(
                      child: Text(
                    "SIMPLE FORM APP",
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ))),
              RaisedButton(
                  key: null,
                  onPressed: buttonPressed,
                  color: const Color(0xFFe0e0e0),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Sign In",
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto")),
                  ))
            ]),
      ),
    );
  }

  void buttonPressed() {
    debugPrint('pressed sign in button');
    Navigator.pushNamed(context, '/general');
  }
}
