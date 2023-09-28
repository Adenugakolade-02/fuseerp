import 'package:flutter/material.dart';
import 'package:fuseerp/pages/accounts/accounts.dart';
import 'package:fuseerp/pages/onboarding/onboarding.dart';

class RouteGenerator{
  static Route<dynamic>? generateRoute(RouteSettings settings){
    if(settings.name ==null || settings.name!.isEmpty){
      return  null;
    }

    switch(settings.name){
      case '/onboarding':
        {
          return MaterialPageRoute(
            builder: (_)=>const OnboardingScreen()
          );
        }
      case '/account':
        {
          return MaterialPageRoute(
            builder: (_)=>const AccountScreen()
          );
        }
      default:
        return null;
    }
  }
}