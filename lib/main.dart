import 'package:flutter/material.dart';
import 'package:mathra_reminder/constant/routes.dart';
import 'package:mathra_reminder/constant/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       onGenerateRoute: RouterGenerator.generateRoute,
      initialRoute: AppRoute.splaceScreen,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "NunitoSans",
        appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0),
        scaffoldBackgroundColor: Colors.white,
        // textButtonTheme: TextButtonThemeData(
        //   style: TextButton.styleFrom(primary: kOffBlack),
        // ),
      ),
      // home:  const HomePageWithBottomBar()
    );
  }
}
