import 'package:snowmanlabs/app/pages/home/home_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/pages/home/home_page.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/search_bar_controller.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeController()),
        Bloc((i) => SearchBarController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
