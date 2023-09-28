import 'package:flutter/material.dart';
import 'package:fuseerp/config/router.dart';
import 'package:fuseerp/config/theme.dart';
import 'package:fuseerp/pages/otp/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FuseERP',
      theme: ThemeClass.lightThemeData,
      debugShowCheckedModeBanner: false,
      home: const OTPScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
