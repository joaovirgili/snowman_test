import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/pages/home/widgets/register_spot_bottomsheet/register_form.dart';

class RegisterSpotBottomSheet extends StatelessWidget {

  final Function closeBottomSheet;

  const RegisterSpotBottomSheet({Key key, this.closeBottomSheet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(25, 25, 25, 0),
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Back(close: closeBottomSheet),
          SizedBox(height: 10),
          Expanded(child: RegisterForm()),
        ],
      ),
    );
  }
}

class Back extends StatelessWidget {

  final Function close;

  const Back({Key key, this.close}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: close,
      ),
    );
  }
}
