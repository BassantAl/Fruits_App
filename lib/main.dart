
import 'package:e_commerce_app/core/helper/on_generate_route.dart';
import 'package:e_commerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     onGenerateRoute:onGenerateRoute ,
     initialRoute:SplashView.routeName ,
    );
  }
}
