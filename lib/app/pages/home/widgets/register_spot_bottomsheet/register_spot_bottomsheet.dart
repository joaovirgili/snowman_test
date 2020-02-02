import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/pages/home/widgets/register_spot_bottomsheet/register_form.dart';

class RegisterSpotBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(25, 25, 25, 0),
      // color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Back(),
          SizedBox(height: 10),
          Expanded(child: RegisterForm()),
        ],
      ),
    );
  }
}

class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
