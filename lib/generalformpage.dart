import 'dart:developer';

import 'package:flutter/material.dart';

class GeneralFormPage extends StatefulWidget {
  const GeneralFormPage({Key? key}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<GeneralFormPage> {
  bool _agree = false;
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General'),
      ),
      body: Center(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: 'First Name'),
                  controller: _firstname,
                  style: const TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Last Name'),
                  controller: _lastname,
                  style: const TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                const Text(
                  "Terms of Use",
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                Row(
                  children: <Widget>[
                    Checkbox(key: null, onChanged: checkChanged, value: _agree),
                    SizedBox(
                        height: 30.0,
                        child: TextButton(
                            key: null,
                            onPressed: showDetail,
                            child: const Text(
                              "Show Detail",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Roboto"),
                            )))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                SizedBox(
                    width: 300.0,
                    height: 60.0,
                    child: ElevatedButton(
                        key: null,
                        onPressed: onOkPressed,
                        child: const Text(
                          "OK",
                          style: TextStyle(
                              fontSize: 32.0,
                              color: Color(0xFF000000),
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

  void showDetail() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Terms of Use'),
              content:
                  const Text('This Application is Simple Form Application.'),
              actions: <Widget>[
                TextButton(
                  child: const Text('Decline',
                      style: TextStyle(color: Color(0xFF000000))),
                  onPressed: () => Navigator.pop<bool>(context, false),
                ),
                TextButton(
                  child: const Text('Accept',
                      style: TextStyle(color: Color(0xFF000000))),
                  onPressed: () => Navigator.pop<bool>(context, true),
                )
              ],
            )).then((r) => checkChanged(r));
  }

  void onOkPressed() {
    var alertMsg = '';
    log('$_firstname.text');
    if (_firstname.text == '') {
      alertMsg += '! Require first name.\n';
    }

    if (_lastname.text == '') {
      alertMsg += '! Require last name.\n';
    }

    if (!_agree) {
      alertMsg += '! Require Agreement.\n';
    }

    if (alertMsg != '') {
      showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(title: const Text('Oops'), content: Text(alertMsg)));
      return;
    }

    Navigator.pushNamed(context, '/setting:${_firstname.text}');
  }

  void checkChanged(bool? value) {
    if (value != null) setState(() => _agree = value);
  }
}
