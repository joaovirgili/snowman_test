import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/pages/login/widgets/facebook_button.dart';
import 'package:snowmanlabs/app/pages/login/widgets/logo_snowmanlabs.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key key,
    @required this.decoration,
    this.singInOnTap,
    this.singupOnTap,
    this.showChildren,
  }) : super(key: key);

  final BoxDecoration decoration;
  final Function singInOnTap;
  final Function singupOnTap;
  final bool showChildren;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: decoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: this.showChildren
            ? [
                LogoSnowManLabs(),
                SizedBox(height: 25),
                _buildTitleSection(),
                SizedBox(height: 50),
                _buildButtonsSection()
              ]
            : [],
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
        MyFacebookButton(
          width: 250,
          onPressed: singInOnTap,
          text: 'Sign in with facebook',
        ),
        SizedBox(height: 15),
        MyFacebookButton(
          width: 250,
          onPressed: singupOnTap,
          text: 'Sign up with facebook',
          darkMode: true,
        ),
      ],
    );
  }
}