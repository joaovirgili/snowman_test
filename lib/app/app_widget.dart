import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snowmanlabs/app/pages/login/login_module.dart';
import 'package:snowmanlabs/app/shared/route_generator.dart';

class AppWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent)
      ),
      home: LoginModule(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
