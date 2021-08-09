import 'package:flutter/material.dart';
import 'package:my_app1/pages/homepage.dart';
import 'package:my_app1/pages/loginpage.dart';
import 'package:my_app1/pages/signUp.dart';
import 'package:my_app1/pages/splashPage.dart';
import 'package:my_app1/utils/routes.dart';
import 'package:my_app1/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => SplashPage(),
        MyRoutes.splashRoute: (context) => SplashPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.signupRoute: (context) => SignUpPage()
      },
    );
  }
}
