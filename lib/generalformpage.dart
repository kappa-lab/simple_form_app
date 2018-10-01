import 'package:flutter/material.dart';

class GeneralFormPage extends StatefulWidget {
  GeneralFormPage({Key key}) : super(key: key);
  @override
  _State createState() => new _State();
}

class _State extends State<GeneralFormPage> {
  bool _agree = false;
  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
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
                new TextFormField(
                  decoration: InputDecoration(labelText: 'First Name'),
                  controller: _firstname,
                  style: new TextStyle(
                      fontSize: 24.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new TextFormField(
                  decoration: InputDecoration(labelText: 'Last Name'),
                  controller: _lastname,
                  style: new TextStyle(
                      fontSize: 24.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(20.0),
                ),
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
                            onPressed: showDetail,
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
                        onPressed: onOkPressed,
                        color: const Color(0xFFe0e0e0),
                        child: new Text(
                          "OK",
                          style: new TextStyle(
                              fontSize: 32.0,
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

  void showDetail() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Terms of Use'),
              content: Text('This Application is Simple Form Application.'),
              actions: <Widget>[
                FlatButton(
                  child: const Text('Decline',
                      style: TextStyle(color: const Color(0xFF000000))),
                  onPressed: () => Navigator.pop<bool>(context, false),
                  color: const Color(0xFFad4526),
                ),
                FlatButton(
                  child: const Text('Accept',
                      style: TextStyle(color: const Color(0xFF000000))),
                  onPressed: () => Navigator.pop<bool>(context, true),
                  color: const Color(0xFF26ad63),
                )
              ],
            )).then((r) => checkChanged(r));
  }

  void onOkPressed() {
    var alertMsg = '';
    print('$_firstname.text');

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
          builder: (context) => AlertDialog(
              title: Text('Oops'),
              content: Text(alertMsg)));
      return;
    }

    Navigator.pushNamed(context, '/setting');
  }

  void checkChanged(bool value) {
    setState(() => _agree = value);
  }
}
