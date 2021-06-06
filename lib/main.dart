import 'package:flutter/material.dart';
import 'package:my_app1/pages/homepage.dart';
import 'package:my_app1/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomePage()
      },
    );
  }
}
