import 'package:flutter/material.dart';
import 'package:new1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool isclicked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset(
              "assets/images/login/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Welcome $username",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 16,
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      label: Text("Username"),
                      hintText: "Enter Username",
                    ),
                    onChanged: (value) {
                      username = value;
                      setState(() {});
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text("Password"),
                      hintText: "Enter Password",
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        isclicked = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homePage);
                    },
                    child: AnimatedContainer(
                      duration: Duration(
                        seconds: 1,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 50,
                      width: isclicked ? 50 : 150,
                      alignment: Alignment.center,
                      child: isclicked
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 32,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
