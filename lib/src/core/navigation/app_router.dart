import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillconnect_app/src/modules/module.dart';
import 'package:skillconnect_app/src/modules/onboarding/onboarding_module.dart';
import 'package:skillconnect_app/src/modules/profile/profile_module.dart';

class AppRouter {
  AppRouter._();

  static AppRouter get it => AppRouter._();

  String get initialRoute => OnboardingModule.splashScreen.name;

  static final _modules = <Module>[
    OnboardingModule(),
    ProfileModule(),
  ];

  List<GetPage> get all {
    final routes = <GetPage>[];
    for (var module in _modules) {
      module.register(routes);
    }
    return routes;
  }

  void pop<T>([T? result]) => Get.back(result: result);
  Future? toWidget(Widget Function() page) => Get.to(page);
}
