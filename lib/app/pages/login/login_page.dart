import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/pages/login/login_controller.dart';
import 'package:snowmanlabs/app/pages/login/login_module.dart';
import 'package:snowmanlabs/app/pages/login/widgets/facebook_button.dart';
import 'package:snowmanlabs/app/pages/login/widgets/logo_snowmanlabs.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var controller = LoginModule.to.bloc<LoginController>();

  @override
  Widget build(BuildContext context) {
    print(controller.loading);

    return Scaffold(
      backgroundColor: LOGIN_BACKGROUND_COLOR,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [BoxShadow(color: Colors.black12)],
              ),
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  LogoSnowManLabs(),
                  SizedBox(height: 25),
                  _buildTitleSection(),
                  SizedBox(height: 50),
                  _buildButtonsSection()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _buildTitleSection() {
    return Text(
      'Challenge',
      style: TextStyle(
        color: MAIN_BLUE,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }

  Column _buildButtonsSection() {
    return Column(
      children: <Widget>[
        FacebookButton(
          width: 250,
          onPressed: () {
          },
          text: 'Sign in with facebook',
        ),
        SizedBox(height: 15),
        FacebookButton(
          width: 250,
          onPressed: () {
          },
          text: 'Sign up with facebook',
          darkMode: true,
        ),
      ],
    );
  }
}


