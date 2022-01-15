import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  String firstName;
  SettingPage({Key? key, required this.firstName}) : super(key: key);
  @override
  _State createState() => _State(firstName);
}

class _State extends State<SettingPage> {
  _State(this.firstName);
  String firstName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Setting'),
        ),
        body: Container(
            child: Text(
          "Hello $firstName!",
          style: const TextStyle(
              fontSize: 60.0,
              color: Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        )));
  }
}
