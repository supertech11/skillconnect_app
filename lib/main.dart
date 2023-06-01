import 'package:skillconnect_app/src/core/navigation/app_router.dart';
import 'package:skillconnect_app/src/core/resources/string/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:skillconnect_app/localization/app_translation.dart';
import 'package:skillconnect_app/src/core/config/dependency_injection/app_bindings.dart';

import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.APP_NAME,
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      fallbackLocale: const Locale('en', 'US'),
      initialBinding: AppBindings(),
      locale: Get.deviceLocale,
      initialRoute: AppRouter.it.initialRoute,
      getPages: AppRouter.it.all,
      routingCallback: (route) async {},
    );
  }
}
