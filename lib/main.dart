import 'package:flutter/material.dart';
import 'homepage.dart';
import './generalformpage.dart';
import './settingpage.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: HomePage(),
      routes: {
        '/general': (context) => GeneralFormPage(),
        '/setting': (context) => HomePage(),
      },
      onGenerateRoute: _getRoute
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    final List<String> path = settings.name.split('/');
    if (path[0] != '')
      return null;

    if (path[1].startsWith('setting:')) {
      if (path.length != 2)
        return null;
      final String param = path[1].replaceFirstMapped('setting:', (m)=>'');
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SettingPage(firstName: param),
      );
    }
    // The other paths we support are in the routes table.
    return null;
  }
}