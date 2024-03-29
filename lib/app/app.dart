
import 'package:clean_architecture_with_mvvm/presentation/utils/routes_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

   MyApp._internal();   // private named constructor
   int appState =0;
  static final MyApp instance =  MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance;  // factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
