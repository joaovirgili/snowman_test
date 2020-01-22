import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xfff3f3f6),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [BoxShadow(color: Colors.black12)],
              ),
              height: screenSize.height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('SNOW'),
                      Text('MAN'),
                      Text('LABS'),
                    ],
                  ),
                  Text('Challenge'),
                  Text('Sign in with facebook'),
                  Text('Sign up with facebook'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
