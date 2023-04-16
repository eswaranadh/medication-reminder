import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mathra_reminder/constant/routes_name.dart';
import 'package:mathra_reminder/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff2C7BFF), Color(0xff81C2FF)],
  ).createShader(const Rect.fromLTWH(0.1, 0.1, 100.0, 100.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.08, 0.35, 0.7],
              tileMode: TileMode.clamp,
              colors: [Colors.white, Color(0xFFC6E3FE), Color(0xFF7EC1FF)])),
      child: Scaffold(
          // By defaut, Scaffold background is white
          // Set its value to transparent
          bottomNavigationBar: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 240,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  CustomElevatedButton(
                     height: 40, 
                     width: 200,
                      title: "Login",
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, AppRoute.loginScreen, (route) => false);
                      }),
                  const SizedBox(height: 10),
                  CustomElevatedButton(
                     height: 40, 
                     width: 200,
                      title: "Sign up",
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            AppRoute.registrationScreen, (route) => false);
                      })
                ]),
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/medicine_icon.svg"),
                Text("Medicine Reminder",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient)),
              ],
            ),
          )),
    );
  }
}
