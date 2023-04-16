import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathra_reminder/constant/routes_name.dart';
import 'package:mathra_reminder/widgets/border_button.dart';
import 'package:mathra_reminder/widgets/custom_button.dart';
import 'package:mathra_reminder/widgets/textfields_with_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
          BorderButton(
            title: "Sign Up",
            onTap: () {
             Navigator.pushNamedAndRemoveUntil(context, AppRoute.registrationScreen, (route) => false);
            },
          ),
        ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Log in",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4285F4))),
                    const SizedBox(height: 55),
                    TextFieldWithTitle(
                      title: "Email Address",
                      textEditingController: emailController,
                    ),
                    const SizedBox(height: 15),
                    TextFieldWithTitle(
                      title: "Password",
                      textEditingController: passwordController,
                      suffixIcon: IconButton(icon: const Icon(Icons.visibility_off), color: const Color(0xFFD9D9D9), onPressed: (){},),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text("Forgot Password?",style:  TextStyle(color: Color(0xFF909090)),
                    )),
                    const SizedBox(height: 50,),
                    Align(
                      alignment: Alignment.center,
                      child: CustomElevatedButton(
                        title: "Log in",
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              )),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: const Color(0xffC4C4C4),
                  height: 1,
                  margin: const EdgeInsets.only(right: 5),
                ),
              ),
              const Text("Don’t have an account?", style: TextStyle(
                color: Color(0xFF909090)
              ),),
              Expanded(
                child: Container(
                  color: const Color(0xffC4C4C4),
                  height: 1,
                  margin: const EdgeInsets.only(left: 5, right: 5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
