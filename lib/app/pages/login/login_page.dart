import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

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
              height: screenSize.height * 0.55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  LogoSnowManLabs(),
                  SizedBox(height: 25),
                  _buildChallengeSection(),
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

  Text _buildChallengeSection() {
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
            print('sign in');
          },
          text: 'Sign in with facebook',
        ),
        SizedBox(height: 15),
        FacebookButton(
          width: 250,
          onPressed: () {
            print('sign up');
          },
          text: 'Sign up with facebook',
          darkMode: true,
        ),
      ],
    );
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    Key key,
    this.darkMode = false,
    @required this.width,
    @required this.onPressed,
    @required this.text,
  }) : super(key: key);

  final bool darkMode;
  final double width;
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: this.onPressed,
        child: Container(
          width: this.width,
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          decoration: BoxDecoration(
            border: this.darkMode ? null : Border.all(color: MAIN_BLUE),
            borderRadius: BorderRadius.circular(5),
            color: this.darkMode ? MAIN_BLUE : Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.facebookSquare,
                color: this.darkMode ? Colors.white : MAIN_BLUE,
              ),
              Text(
                this.text,
                style: TextStyle(
                  color: this.darkMode ? Colors.white : MAIN_BLUE,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoSnowManLabs extends StatelessWidget {
  const LogoSnowManLabs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: MAIN_BLUE,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('S', style: textStyle),
              Text('N', style: textStyle),
              Text('O', style: textStyle),
              Text('W', style: textStyle),
            ],
          ),
        ),
        Container(
          width: 85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('M', style: textStyle.copyWith(fontSize: 30)),
              Text('A', style: textStyle.copyWith(fontSize: 30)),
              Text('N', style: textStyle.copyWith(fontSize: 30)),
            ],
          ),
        ),
        Container(
          width: 85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('L', style: textStyle),
              Text('A', style: textStyle),
              Text('B', style: textStyle),
              Text('S', style: textStyle),
            ],
          ),
        ),
        // Text('SNOW', style: textStyle),
        // Text('MAN', style: textStyle.copyWith(letterSpacing: 6, fontSize: 27)),
        // Text('LABS', style: textStyle.copyWith(letterSpacing: 3, fontSize: 27)),
      ],
    );
  }
}
