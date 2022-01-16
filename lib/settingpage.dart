import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  final String firstName;
  const SettingPage({Key? key, required this.firstName}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Setting'),
        ),
        body: Text(
          "Hello ${widget.firstName}!",
          style: const TextStyle(
              fontSize: 60.0,
              color: Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        ));
  }
}
