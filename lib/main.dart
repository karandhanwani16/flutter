import 'package:flutter/material.dart';
import 'package:new1/pages/home.dart';
import 'package:new1/pages/login.dart';
import 'package:new1/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: "/login",
      routes: {
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.loginPage: (context) => LoginPage(),
      },
    );
  }
}
