import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logo"),
      ),
      body: Center(
        child: Text(
          "Homepage",
          style: TextStyle(
            fontSize: 36,
            color: Colors.deepPurple.shade500,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
