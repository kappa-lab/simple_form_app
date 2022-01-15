import 'package:flutter/material.dart';
import './homepage.dart';
import './generalformpage.dart';
import './settingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Generated App',
        theme: ThemeData(
          primaryColor: const Color(0xFF2196f3),
          canvasColor: const Color(0xFFfafafa),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(secondary: const Color(0xFF2196f3)),
        ),
        home: const HomePage(),
        routes: {
          '/general': (context) => const GeneralFormPage(),
          '/setting': (context) => const HomePage(),
        },
        onGenerateRoute: _getRoute);
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    final n = settings.name;
    if (n == null) return null;
    final List<String> path = n.split('/');
    if (path[0] != '') return null;

    if (path[1].startsWith('setting:')) {
      if (path.length != 2) return null;
      final String param = path[1].replaceFirstMapped('setting:', (m) => '');
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => SettingPage(firstName: param),
      );
    }
    // The other paths we support are in the routes table.
    return null;
  }
}
