import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key key,
    @required this.decoration,
  }) : super(key: key);

  final BoxDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(75),
      decoration: decoration,
      child: CircularProgressIndicator(),
    );
  }
}