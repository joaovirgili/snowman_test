import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

class MyFacebookButton extends StatelessWidget {
  const MyFacebookButton({
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