
import 'package:flutter/material.dart';
import 'package:mathra_reminder/constant/routes_name.dart';
import 'package:mathra_reminder/feature/all_medicines/view/all_medicine.dart';
import 'package:mathra_reminder/feature/auth/login/view/login_screen.dart';
import 'package:mathra_reminder/feature/auth/registraion/view/registration_screen.dart';
import 'package:mathra_reminder/feature/splash/splash_screen.dart';
import '../feature/home/view/bottom_nav.dart';
import '../feature/home/view/home_screen.dart';
import '../feature/settings/view/settings.dart';



class RouterGenerator {
 static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.homePageWithBottomBar:
        return MaterialPageRoute(builder: (_) => const HomePageWithBottomBar());
      case AppRoute.myHomeScreen:
        return MaterialPageRoute(builder: (_) => const MyHomeScreen());
       case AppRoute.allMedicineScreen: 
        return MaterialPageRoute(builder: (_)=>const AllMedicineScreen());
        case AppRoute.appSettingsScreen:
        return MaterialPageRoute(builder:(_)=> const AppSettingsScreen() );
        case AppRoute.splaceScreen: 
        return MaterialPageRoute(builder:(_)=> SplashScreen());
        case AppRoute.registrationScreen:
         return MaterialPageRoute(builder: (_)=> const RegistrationScreen());
        case AppRoute.loginScreen:
         return MaterialPageRoute(builder: (_)=> const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}