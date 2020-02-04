import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:snowmanlabs/app/pages/login/login_controller.dart';
import 'package:snowmanlabs/app/pages/login/login_module.dart';
import 'package:snowmanlabs/app/pages/login/widgets/loading_widget.dart';
import 'package:snowmanlabs/app/pages/login/widgets/login_widget.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';
import 'package:snowmanlabs/app/shared/constants/routes.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var controller = LoginModule.to.bloc<LoginController>();

  var mainBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [BoxShadow(color: Colors.black12)],
  );

  ReactionDisposer loggedInReaction;

  @override
  void initState() {
    loggedInReaction = autorun((_) {
      if (controller.isLoggedIn) {
        Navigator.pushNamedAndRemoveUntil(
            context,
            ROUTE_HOME,
            (Route<dynamic> route) => false,
          );

      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LOGIN_BACKGROUND_COLOR,
      body: Center(
        child: Stack(
          children: <Widget>[
            // Here comes background image
            Observer(
              builder: (_) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: controller.loading ? 300 : 400,
                  width: 300,
                  onEnd: controller.stopAnimation,
                  child: controller.loading
                      ? LoadingWidget(decoration: mainBoxDecoration)
                      : LoginWidget(
                          decoration: mainBoxDecoration,
                          singInOnTap: () {
                            controller.startLoading();
                            Future.delayed(Duration(seconds: 2)).then((_) {
                              controller.setLoggedIn();
                            });
                          },
                          showChildren: controller.showLoginWidgets,
                        ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
