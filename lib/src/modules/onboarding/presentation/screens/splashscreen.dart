import 'dart:async';

import 'package:skillconnect_app/src/core/navigation/router_extensions.dart';
import 'package:skillconnect_app/src/core/resources/colors/pallet.dart';
import 'package:skillconnect_app/src/core/resources/string/app_assets.dart';

import 'package:flutter/material.dart';

import 'package:skillconnect_app/src/modules/profile/profile_module.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 2), () async {
      ProfileModule.profileScreen.navigateToFirst();
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (timer.isActive) {
      timer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallet.white,
      body: Center(
        key: const ValueKey("logo"),
        child: Image.asset(AppAssets.splashscreen_logo),
      ),
    );
  }
}
