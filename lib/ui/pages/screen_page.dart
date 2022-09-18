import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:login_page/ui/pages/sign_in_page.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        home: Scaffold(
          body: AnimatedSplashScreen(
              splash: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/xelp.png'))),
                ),
              ),
              splashTransition: SplashTransition.rotationTransition,
              duration: 4000,
              nextScreen: SignInPage()),
        ));
  }
}
