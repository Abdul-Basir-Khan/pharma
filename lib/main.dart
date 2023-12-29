import 'package:flutter/material.dart';
import 'package:pharma/splash_services/splash_service.dart';

void main() {
  runApp(const PharmaApp());
}

class PharmaApp extends StatelessWidget {
  const PharmaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashServicesScreen());
  }
}
