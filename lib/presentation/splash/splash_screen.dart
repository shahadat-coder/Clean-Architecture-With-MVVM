import 'dart:async';

import 'package:clean_architecture_with_mvvm/presentation/utils/assets_manager.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/color.dart';
import 'package:clean_architecture_with_mvvm/presentation/utils/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? _timer;

  _startDelay(){
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
 }

 @override
  void initState() {
    super.initState();
    _startDelay();
  }
@override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }
}
