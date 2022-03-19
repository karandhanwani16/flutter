import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Homepage"),
        ),
        drawer: Drawer(),
        body: Center(
          child: Text(
            "Homepage",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w400,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ),
    );
  }
}
