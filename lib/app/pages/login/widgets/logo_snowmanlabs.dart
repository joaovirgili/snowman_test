import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

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