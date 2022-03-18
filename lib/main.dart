import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new1/routes/home.dart';
import 'package:new1/routes/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.montserratTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
